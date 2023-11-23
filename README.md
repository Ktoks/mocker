# Mocker mocks large data files
### Hopefully written in Nu - we'll see how that pans out

## Sometimes clients don't want to sent test data, that's where Mocker comes in
> _Think of it as a way to get sanitized data for testing_

## Architectural plan
### Path to a file with one record on one line
> By default - Mocker will try and figure out what format your data needs to be in without any added options
### Number of records to mock
> Think 10 to 1 Million - variable size depending on if you need a quick test or if you need to test for volume
### Options and Keys to select the delimiter, sort, allow for empty fields, etc...
> This may be built out before the default is fully working - as it's more simple to _do_ than _guess_
