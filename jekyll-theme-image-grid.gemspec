# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-image-grid"
  spec.version       = "0.1.2"
  spec.authors       = ["jirrian"]
  spec.email         = ["jillianzhong@yahoo.com"]

  spec.summary       = "A simple responsive image grid theme for displaying image-based content with various built-in customization options."
  spec.homepage      = "https://github.com/jirrian/jekyll-theme-image-grid"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README|_config\.yml)!i) }

  spec.add_development_dependency "jekyll", "~> 4.1"

  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7"
end
