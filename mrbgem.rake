MRuby::Gem::Specification.new('mruby-tojson') do |spec|
  spec.license = 'MIT'
  spec.author  = 'mruby developers'
  spec.summary = 'Memory-friendly JSON encoder'
  spec.add_dependency 'mruby-io', '>= 0.0.0', :github => 'iij/mruby-io')
end
