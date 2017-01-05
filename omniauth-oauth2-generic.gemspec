# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-oauth2-generic/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-oauth2-generic"
  spec.version       = Omniauth::OAuth2Generic::VERSION
  spec.authors       = ["Joe Marty"]
  spec.email         = ["jmarty@iexposure.com"]

  spec.summary       = %q{Generic, Configurable OmniAuth Strategy for OAuth2}
  spec.homepage      = "http://gitlab.iexposure.com/satorix/omniauth-oauth2-generic"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://gems.iexposure.com'
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth-oauth2", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
