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

### Help English language text-to-speech engines pronounce Latin
```ruby
["caelum", "omnia", "pugno"].each { |word| puts MedievalLatina[word] }
=> "chayloom"
=> "ohm-nia"
=> "poon-yoh"

sentence = MedievalLatina["sed libera nos a malo"]
=> "sayd leebayrah nohs ah mahloh"
```
```javascript
let sentence = "...";
responsiveVoice.speak(sentence, "UK English Female");
```
### Generate lexicons to override text-to-speech pronunciation
```ruby
polly = Aws::Polly::Client.new
s3 = Aws::S3::Client.new

sentence = "PATER NOSTER qui es in caelis"

words = sentence.split(" ")
pronunciations = MedievalLatina.pronunciations_for(words)
lexicon = MedievalLatina::LexiconBuilder.new(pronunciations).call

name = "CustomLatin"
polly.put_lexicon(name: name, content: lexicon.to_s)

# Synthesize speech using the lexicons
response = polly.synthesize_speech(
  lexicon_names: [name],
  text: sentence,
  output_format: "mp3",
  voice_id: "Joanna"
)

# Read the audio data and store it in a variable
audio_data = response.audio_stream.read

bucket_name = "foo"
object_key = "bar/pater-noster.mp3"

s3.put_object(
  bucket: bucket_name,
  key: object_key,
  body: audio_data
)
```

### Latin langauge helper methods
```ruby
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
Maintain project style by running `bin/lint` before commiting changes.

To install this gem onto your local machine, run `bundle exec rake install`.

To release a new version:
1. Update the version number in `version.rb`
2. Run `bin/setup` to increment the version in the lock file
3. Run `bundle exec rake release`

Rebuild the lexicon files when you add new International Phonetic Alphabet pronunciations.
You do this by running: `bin/build`

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jaysonvirissimo/medieval_latina.
Run `standardrb --fix` before submitting any changes, to help keep the code formatting uniform.

## License

The gem is available as open source under the terms of the [MIT License](https://github.com/jaysonvirissimo/medieval_latina/blob/master/LICENSE.txt).
