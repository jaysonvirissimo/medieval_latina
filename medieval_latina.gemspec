require_relative "lib/medieval_latina/version"

Gem::Specification.new do |spec|
  description = <<~HEREDOC
    There are good text-to-speech engines for English and classical Latin, but none for medieval Latin.
    MedievalLatina converts Latin text to a kind of phonetic spelling that can be read by English text-to-speech engines.
  HEREDOC
  github_uri = "https://github.com/jaysonvirissimo/medieval_latina"

  spec.name = "medieval_latina"
  spec.version = MedievalLatina::VERSION
  spec.authors = ["Jayson Virissimo"]
  spec.email = ["jayson.virissimo@asu.edu"]
  spec.summary = "Transform medieval Latin text into phonetic English"
  spec.description = description
  spec.homepage = "https://github.com/jaysonvirissimo/medieval_latina"
  spec.license = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")
  spec.metadata["allowed_push_host"] = "https://rubygems.org/"
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = github_uri
  spec.metadata["changelog_uri"] = github_uri
  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
