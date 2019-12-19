# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "sp20"
  spec.version       = "0.1.0"
  spec.authors       = ["Khaled Diab"]
  spec.email         = ["kdiab@sfu.ca"]

  spec.summary       = "Learning the concepts of computer system and network security"
  spec.homepage      = "https://netsys-security.github.io/sp20/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 2.1.0"
  spec.add_development_dependency "rake", "~> 12.3.2"
end
