# MedievalLatina <a href="https://github.com/jaysonvirissimo/medieval_latina"> <img src="https://img.shields.io/github/repo-size/jaysonvirissimo/medieval_latina"></a>

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
=> "chayloom"
=> "ohm-nia"
=> "poon-yoh"

MedievalLatina.verb?("voco")
=> true

MedievalLatina.verb?("nauta")
=> false

MedievalLatina.adverb?("facile")
=> true

MedievalLatina.adjective?("certus")
=> true

MedievalLatina.noun?("canis")
=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies.
Then, run `rake spec` to run the tests.
You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version:
1. Update the version number in `version.rb`
2. Run `bin/setup` to increment the version in the lock file
3. Run `bundle exec rake release`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jaysonvirissimo/medieval_latina.
Run `standardrb --fix` before submitting any changes, to help keep the code formatting uniform.

## License

The gem is available as open source under the terms of the [MIT License](https://github.com/jaysonvirissimo/medieval_latina/blob/master/LICENSE.txt).
