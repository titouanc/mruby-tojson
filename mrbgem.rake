MRuby::Gem::Specification.new('mruby-tojson') do |spec|
  spec.license = 'MIT'
  spec.author  = 'iTitou'
  spec.summary = 'Memory-friendly JSON encoder'

  spec.add_dependency 'mruby-io', github:'iij/mruby-io'
end
