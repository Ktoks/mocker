# Mocker mocks large data files
### Hopefully written in Nu - we'll see how that pans out

## Sometimes clients don't want to send test data, that's where Mocker comes in
> _Think of it as a way to get sanitized data for testing_

## Architectural plan

### Path to a file with one record on one line
> By default - Mocker will try and figure out what format your data needs to be in without any added options

### Number of records to mock
> Think 10 to 1 Million - variable size depending on if you need a quick test or if you need to test for volume

### Options and Keys to select the delimiter, sort, allow for empty fields, etc...
> This may be built out before the default is fully working - as it's more simple to _do_ than _guess_



### Example data record:
Mr.|Alan|Turing|000-001-0010|alan.turing@mocked.com|Binary Street|#0|New York, NY 10101|1k1111101000

### Example command line (that could potentially mock the above record):
> mocker.nu infile 100 1=t 2=f 3=fl 4=p 5=e 6=1b 7=h+1n 8=c,sz 9=dnd9 -d |

#### Column 1 is a Title - from a list of titles
#### Columns 2 and 2 are _Name_s - generated from pre and post possibilities
#### Column 4 is a _Phone_ - fully random digits
#### Column 5 is an _Email_ - fully random or partially random
#### Column 6 is an _Addr1_ - randomly selected _Name_ fields
#### Column 7 is an _Addr2_ - randomly selected _Number_, _Name_, and _Housing_ fields 
#### Column 8 is a _CSZ_ - a _City_, _State_ _Zip_
#### Column 9 is an _AlphaNumeric ID_ - there are 2 types (stationary and random)
#### The final option above sets the delimiter to `|`
