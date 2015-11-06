# ismine - domain checker with wildcards

`ismine` is a command line domain checker with regular-expression-like
wildcard support. It is using [Runfile](https://github.com/DannyBen/runfile).

## Features

* Check for domain using DNS (faster) or Whois lookup
* Scout for multiple domain ideas at once
* Generate name ideas from patterns

## Install Gem Dependencies

	$ bundle

## Usage

```
$ run --help

ismine 0.1.0
Domain checker with wildcard support

Usage:
  run check <domain> [--deep]
  run scout <pattern> [<tld> --count <count> --deep]
  run ideas <pattern> [--count <count>]
  run (-h|--help|--version)

Commands:
  check <domain> [--deep]
      Check a single domain for availability by DNS and by Whois record

  scout <pattern> [<tld> --count <count> --deep]
      Look for available domain names by pattern

  ideas <pattern> [--count <count>]
      Generate name ideas by pattern without checking for domain
      availability

Options:
  <domain>
      Full domain name to check

  -d --deep
      Also perform Whois check in case the DNS check shows that the domain
      is available

  <pattern>
      Domain search pattern
      lowercase letters: will be replaced with similar letters (vowels,
      consonants)
      uppercase letters: will be used as is
      [list]: will be replaced with one letter from the list
      letter followed by a question mark: will sometimes be removed

  <tld>
      Top level domain to check [default: com]
      You can also append it directly to the <pattern>, like domain.co.uk

  -c --count <count>
      Number of times to run [default: 5]

  -h --help
      Show this screen

  --version
      Show version number
```

## Examples

```
$ `run check iwantit.com`
iwantit.com is taken

$ run scout DoG.io
dog.io is probably available
dug.io is taken
deg.io is taken

$ run scout DoG.io --deep
dog.io is taken
dug.io is taken
deg.io is taken

$ run scout MY[dlh]OG.co
myhog.co is probably available
mylog.co is taken
mydog.co is taken



```