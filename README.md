# MedievalLatina
<a href="https://github.com/jaysonvirissimo/medieval_latina"> <img src="https://img.shields.io/github/repo-size/jaysonvirissimo/medieval_latina"> <br>
There are good text-to-speech engines for English and classical Latin, but none for medieval Latin.
`MedievalLatina` converts Latin text to a kind of phonetic spelling that can be read by English language text-to-speech engines.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'medieval_latina'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install medieval_latina

## Usage

```ruby
["caelum", "omnia", "pugno"].each { |word| puts MedievalLatina[word] }
# "chayloom"
# "ohm-nia"
# "poon-yoh"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.
To release a new version, update the version number in `version.rb`, run `bin/setup` to increment the version in the lock file, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).
Run `standardrb --fix` before submitting any changes, to help keep the code formatting uniform.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jaysonvirissimo/medieval_latina.

## License

The gem is available as open source under the terms of the [MIT License](https://github.com/jaysonvirissimo/medieval_latina/blob/master/LICENSE.txt).
