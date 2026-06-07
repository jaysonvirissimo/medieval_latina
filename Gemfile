source "https://rubygems.org"

# Specify your gem's dependencies in medieval_latina.gemspec
gemspec

# `logger` stopped being autoloaded under Bundler once it became a bundled gem
# (Ruby 3.4+) and is no longer in Ruby 4.0's default set. jsonlint requires it
# without declaring the dependency, so declare it here for `bundle exec jsonlint`.
gem "logger"
