
Pod::Spec.new do |s|
  s.name             = 'Flare'
  s.version          = '1.0.7'
  s.summary          = 'Some swift extension for myself.'
  s.homepage         = 'https://github.com/GPX-NSlog/Flare'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Gpx' => 'gpxnslog@gmail.com' }
  s.source           = { :git => 'https://github.com/GPX-NSlog/Flare.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.swift_version = '5.0'
  s.requires_arc = true
  s.default_subspec = 'All'
  s.frameworks = 'Foundation'

  s.subspec 'All' do |all|
  all.source_files = 'Flare/**/*.{swift}'
      all.frameworks = 'UIKit'
      all.dependency 'Hue', '~> 5.0.0'
      all.dependency 'HandyJSON', '~> 5.0.0'
      all.dependency 'Moya', '~> 13.0.1'
  end
  
  s.subspec 'Net' do |net|
  net.source_files = 'Flare/Net/**/*.{swift}'
      net.frameworks = 'UIKit'
      net.dependency 'HandyJSON', '~> 5.0.0'
      net.dependency 'Moya', '~> 13.0.1'
  end
  
  s.subspec 'UI' do |ui|
  ui.source_files = 'Flare/UI/**/*.{swift}'
      ui.frameworks = 'UIKit'
      ui.dependency 'Hue', '~> 5.0.0'
  end
end
