lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sjpeg/version"

Gem::Specification.new do |spec|
  spec.name          = "sjpeg"
  spec.version       = Sjpeg::VERSION
  spec.authors       = ["Stefano Verna"]
  spec.email         = ["s.verna@datocms.com"]

  spec.summary       = "Ruby bindings for sjpeg"
  spec.description   = "Ruby bindings for sjpeg"
  spec.homepage      = "https://github.com/stefanoverna/sjpeg"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/stefanoverna/sjpeg"
  spec.metadata["changelog_uri"] = "https://github.com/stefanoverna/sjpeg"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.extensions    = %w[ext/sjpeg/extconf.rb]
  spec.require_paths = ["lib"]

  spec.add_dependency "ffi"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "rspec", "~> 3.0"
end
