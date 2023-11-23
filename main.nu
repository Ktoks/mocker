#~/.local/bin/nu

use argparser.nu arg_parser
use handleoptions.nu handle_options

def main [infile: string, rec_count: int, ...optlst: string] {
  let parsed = (arg_parser $infile $rec_count)

  let options = (handle_options $optlst)

  print line: $parsed.0
  print count: $parsed.1
  print options: $options
}
