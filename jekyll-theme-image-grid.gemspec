# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-image-grid"
  spec.version       = "0.1.0"
  spec.authors       = ["Jillian"]
  spec.email         = ["jillianzhong@yahoo.com"]

  spec.summary       = "Simple template for an image grid website."
  spec.homepage      = "https://github.com/jirrian"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 4.1"
end
