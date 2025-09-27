# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Development Commands

- **Setup**: `bin/setup` - Install dependencies with bundle install
- **Tests**: `rake spec` or `bundle exec rspec` - Run the full test suite
- **Linting**: `bin/lint` - Run StandardRB linter and jsonlint on dictionary.json
- **Build lexicons**: `bin/build` - Regenerate PLS lexicon files from dictionary.json
- **Console**: `bin/console` - Interactive prompt for experimentation
- **Install gem locally**: `bundle exec rake install`
- **Release**: `bundle exec rake release` (after updating version.rb)

## Architecture Overview

This is a Ruby gem that converts medieval Latin text to phonetic English for text-to-speech engines. The architecture consists of:

### Core Components

- **MedievalLatina class** (`lib/medieval_latina.rb`): Main interface with class methods for text conversion and linguistic analysis
  - `MedievalLatina[text]` - Primary conversion method
  - Part-of-speech helpers: `verb?`, `noun?`, `adjective?`, `adverb?`
  - `pronunciations_for(words)` - Extract IPA pronunciations for lexicon building

- **Dictionary system** (`data/dictionary.json`): Large JSON file containing Latin words with metadata including:
  - IPA pronunciations
  - Part of speech classifications
  - Custom pronunciation overrides

- **Lexicon generation** (`lib/medieval_latina/lexicon_builder.rb`, `lib/medieval_latina/lexicon.rb`): Creates PLS (Pronunciation Lexicon Specification) files for AWS Polly and other TTS engines

### Phonetic Conversion Logic

The main conversion algorithm handles:
- Vowel teams: ae→ay, oe→ay, au→ou
- Consonant transformations: c→ch/k (soft/hard), g→j/g, j→y, t→ts/t, x→ks
- Consonant teams: gn→n-y, qu→kw
- Text preprocessing with I18n transliteration

### Data Flow

1. Text input → word tokenization → dictionary lookup
2. If word has custom pronunciation → use it
3. Otherwise → apply phonetic transformation rules
4. Rejoin with proper punctuation spacing

## Key Files

- `lib/medieval_latina.rb` - Main conversion logic and API
- `data/dictionary.json` - Latin word database (400KB+)
- `bin/build` - Splits dictionary into multiple PLS files in lexicons/ directory
- `.standard.yml` - StandardRB configuration (Ruby 3.2, parallel linting)
- `medieval_latina.gemspec` - Gem specification (requires Ruby >= 3.2.0)

## Testing

- RSpec test suite in `spec/`
- Configuration in `.rspec` with documentation format
- Run specific tests: `bundle exec rspec spec/specific_spec.rb`