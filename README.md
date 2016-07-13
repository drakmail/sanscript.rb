# Sanscript.rb

[![Build Status](https://travis-ci.org/ubcsanskrit/sanscript.rb.svg?branch=master)](https://travis-ci.org/ubcsanskrit/sanscript.rb)
[![Code Climate](https://codeclimate.com/github/ubcsanskrit/sanscript.rb/badges/gpa.svg)](https://codeclimate.com/github/ubcsanskrit/sanscript.rb)
[![Test Coverage](https://codeclimate.com/github/ubcsanskrit/sanscript.rb/badges/coverage.svg)](https://codeclimate.com/github/ubcsanskrit/sanscript.rb/coverage)
[![Dependency Status](https://gemnasium.com/badges/github.com/ubcsanskrit/sanscript.rb.svg)](https://gemnasium.com/github.com/ubcsanskrit/sanscript.rb)

This gem is starting off as a mostly-straightforward port of [learnsanskrit.org's Sanscript.js](https://github.com/sanskrit/sanscript.js), and will go from there. It also incorporates transliteration scheme detection based on [learnsanskrit.org's Detect.js](https://github.com/sanskrit/detect.js).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sanscript'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sanscript

## Usage

You can access detection through `Sanscript.detect(text)` and transliteration through `Sanscript.transliterate(text, from, to)`. Code should be fairly straightforward and partially documented.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ubcsanskrit/sanscript. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
