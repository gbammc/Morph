Pod::Spec.new do |s|
  s.name     = 'Morph'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'Helpers to create awsome animations.'
  s.homepage = 'https://github.com/gbammc/Morph'
  s.author   = { 'Alvin Zhu' => 'gbammc@gmail.com' }
  s.social_media_url = "https://twitter.com/alvin_zhu"
  s.source   = { :git => 'https://github.com/gbammc/Morph.git', :tag => s.version }
  s.requires_arc = true
  s.source_files = 'Morph/*{.h,.swift}'
  s.ios.frameworks = 'Foundation', 'UIKit'
  s.ios.deployment_target = '8.0'
end
