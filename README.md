# ismine - domain checker with wildcards

`ismine` is a command line domain checker with regular-expression-like
wildcard support. It is using [Runfile](https://github.com/DannyBen/runfile).

## Features

- Check for domain using DNS (faster) or Whois lookup
- Scout for multiple domain ideas at once
- Generate name ideas from patterns

## Install Gem Dependencies

### Option 1, with bundler:

	$ bundle

### Option 2, manually:

	$ gem install runfile
	$ gem install whois

## Usage

	$ run --help

## Examples

```
$ run check iwantit.com
iwantit.com is taken

$ run scout DoG.io
dog.io is probably available
dug.io is taken
dig.io is taken

$ run scout DoG.io --deep
dog.io is taken
dug.io is taken
dig.io is taken

$ run scout THE[cb]AR.co.uk --deep
thebar.co.uk is taken
thecar.co.uk is taken

$ run scout "(black white)(cat dog)" io
blackcat.io is taken
blackdog.io is probably available
whitedog.io is taken
whitecat.io is probably available

$ run ideas RED[bcl]OO?[dgm]
redloog
redcoom
redlom
redlog
redboom
```