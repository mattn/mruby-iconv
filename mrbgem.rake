MRuby::Gem::Specification.new('mruby-iconv') do |spec|
  spec.license = 'MIT'
  spec.authors = 'mattn'
 
  spec.linker.libraries << 'iconv'
end
