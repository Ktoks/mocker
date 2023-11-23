# this script is built to mock large data files based on a single line of input

# Architectural plan: ############

# input a file with one line on it(first)
# input a count of how many records to mock
# input keys for any columns that are not guessed by the code(first)
# output to the terminal(first)
# default behavior is to guess what each field represents (second)
# Input file with data on one line
# options put into command line are optional explanations of what each field is.

# If no explanation is input for each field, the code makes its best guess how to mock the field -based on length for Numbers, unless a decimal involved (assumed money).

# Example:
# Infile record= Mr. | Dave | Sharp | 435-586-0101 | dave.the.sharpener@gmail.com | Pencil Street | #2 | Woodshaft Pennsylvania, 02345 | 12k456789
# Cmd infile 1=t 2=f 3=fl 4=p 5=e 6=1b 7=h+1n 8=c 9=a9k3 -d |

# Legend:
# +a=abbreviated
# +b=blank
# +i=initials
# +k=keep
# +l=last
# +#=count
# +#n=number following

# Keys:

# A-account numeric id +#
# B-birthday(format of date)
# C-city +- State/country
# D-day of the week m-s +a
# E-Email +k domain +b
# F-first name +l
# G-company name +l +b
# H-housing (apartment, unit) +b
# I-id alphanumeric +#
# J-just Numbers date
# K-keep pattern alphanumeric +#
# L-Language
# M-month +a
# N-Number +#
# O-only month and day
# P-phone +b
# Q-check / banking number
# R-rate 1/2 +#
# S-State +i +b
# T-title -sir, madam +b
# U-uniform ID - special character +#
# V-vehicle make, model +#
# W-world (country) +i +b
# X-credit card number
# Y-year +a
# Z-zip +4 +b
# 1- Street named +b
# 2- Street numbered 1st, etc +b

# +n=next only

# Options:
# -a alphanumerically sort by following column
# -b bad characters allowed +n
# -d delimiter (if space delimited, figure in) +n
# -f fuzzing -testing for failures only
# -h help
# -i interactive - while parsing line, ask for input
# -m missing fields allowed for next
# -n number of records
# -s special characters allowed($&_\{}∆) +n
# -u unicode allowed
# -v verbose
# -w white space inserted randomly
