# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-fermi"
  spec.version       = "1.0.0"
  spec.authors       = ["Song-Zi Vong"]
  spec.email         = ["v4vong@gmail.com"]

  spec.summary       = "A simple and pragmatic Jekyll theme for blog"
  spec.homepage      = "https://github.com/v4vong/jekyll-theme-fermi"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.2"
  spec.add_runtime_dependency "jekyll-paginate", "~> 1.1"
end
