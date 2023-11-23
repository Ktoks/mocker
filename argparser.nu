#~/.local/bin/nu

# input a file with one line on it(first)
# input a count of how many records to mock
# input keys for any columns that are not guessed by the code(first)
export def arg_parser [infile: string, rec_count: int] {
  if ( not ( $infile | path exists ) ) {
    error make {
      msg: "input file does not exist", 
      label: {
        text: "infile", 
        span: (metadata $infile).span
      } 
    }
  }
  # print $infile
  let inline = (open $infile --raw | decode utf-8 | lines -s)

  if ( $rec_count < 0 ) {
    error make {
      msg: "record count must be greater than 0", 
      label: {
        text: "record count", 
        span: (metadata $rec_count).span
      } 
    }
  }
  return [$inline, $rec_count]
}
# output to the terminal(first)
# default behavior is to guess what each field represents (second)

# Infile record= Mr. | Dave | Sharp | 435-586-0101 | dave.the.sharpener@gmail.com | Pencil Street | #2 | Woodshaft Pennsylvania, 02345 | 12k456789

