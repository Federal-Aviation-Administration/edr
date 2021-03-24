# -*- ruby -*-

require "rubygems"
require "hoe"

class Hoe

  attr_reader :bindir
end

Hoe.plugin :bundler
# Hoe.plugin :compiler
# Hoe.plugin :doofus
# Hoe.plugin :gem_prelude_sucks
# Hoe.plugin :gemspec2
# Hoe.plugin :git
# Hoe.plugin :inline
Hoe.plugin :minitest
# Hoe.plugin :racc
# Hoe.plugin :rcov
# Hoe.plugin :rdoc
# Hoe.plugin :rubygems
# Hoe.plugin :travis
# Hoe.plugin :yard

Hoe.spec "edr" do |s|
  require_ruby_version [">= 2.7", "<= 4.0"]
  developer('Dominic Sisneros', 'dsisnero@gmail.com')

  dependency('dry-system','~> 0.18')
  dependency('rom', '~> 5.2')
  dependency('rom-sql', '~> 3.3')
  dependency('ruby-oci8','~> 2.2')
  dependency('dry-auto_inject','~> 0.7')
  dependency('dry-view', '~> 0.7')
  dependency('dry-cli', '~> 0.6')
  dependency('dotenv','~> 2.7')
  dependency('rake','~> 13.0')
  license "MIT" # this should match the license in the README
end

# vim: syntax=ruby
