# kmkr
kmkr is a CLI to create files prefixed by date (e.g. `20151031.md`). It supports creating files with any file extension,
date format and a suffix.

## Why
Because I create notes files everyday with a date prefix and I got tired of manually typing the date myself.

## Installation

    $ gem install kmkr

## Usage
Specify the extension of the file as an argument.

```bash
$ kmkr <extension>
```

### Examples
```bash
# Create an .md file with today's date (e.g. 31-10-2015.md)
$ kmkr md

# Create a .rb file with a different date format (e.g. 20151031.rb)
$ kmkr rb -f %Y%m%d

# Create a .rb file with a suffix (e.g. 31-10-2015_that_thing.rb)
$ kmkr rb -s _that_thing
```
### Options
`-f`, `--date-format`

Use a different date format for the filename prefixes. The format directives used are the ones for [Ruby's strftime method](http://ruby-doc.org/core-2.2.2/Time.html#method-i-strftime).

`-d`, `--directory`

Set the location where the file should be saved.

`-s`, `--suffix`

Add a suffix to the filename

You can always get more details using `kmkr -h`.

## License
MIT (c) Mário Nzualo
