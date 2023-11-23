#~/.local/bin/nu

# Cmd infile 1=t 2=f 3=fl 4=p 5=e 6=1b 7=h+1n 8=c 9=a9k3 -d |
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
export def handle_options [ optlst ] {
  let output = $optlst | split row " " 
  # find options 
  $output
}

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

