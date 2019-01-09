# A project skeleton
#coding: utf-8
lib = File.expandpath('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::SPecification.new do |spec|
  spec.name           = "NAME"
  spec.version        = '1.0'
  spec.authors        = ["Infestation"]
  spec.email          = ["gwenmorgana@gmail.com"]
  spec.summary        = %q{Skeletal Project Gem}
  spec.description    = %q{This will assist in future projects by using a custom skeleton}
  spec.homepage       = "https://github.com/gwenmorgana"
  spec.license        = "MIT"

  spec.files          = ['lib/NAME.rb']
  spec.executables    = ['bin/NAME']
  spec.test_files     = ['tests/test_NAME.rb']
  spec.require_paths  = ["lib"]
end
