# lita-die

[![Build Status](https://travis-ci.org/docwhat/lita-die.png?branch=master)](https://travis-ci.org/docwhat/lita-die)
[![Coverage Status](https://coveralls.io/repos/docwhat/lita-die/badge.png)](https://coveralls.io/r/docwhat/lita-die)

Adds a `die` command to Lita so you can force it to die or restart.  Useful if
you run your lita bot under something like [runit](http://smarden.org/runit/).

## Installation

Add lita-die to your Lita instance's Gemfile:

``` ruby
gem "lita-die"
```

## Configuration

None.  Only admin users can call `die`.

## Usage

Tell your bot to die:

```
lita die
```
