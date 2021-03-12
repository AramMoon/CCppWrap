Pod::Spec.new do |s|
  s.name        = 'CCppWrapSwift'
  s.version     = '0.1.2'
  s.authors     = 'Aram'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage    = 'https://arammoon.web.app/'
  s.source      = { :git => 'https://github.com/arammoon/CCppWrap.git', :tag => s.version }
  s.summary     = 'Synchronization construct for Swift'
  s.description = 'C C++ Library for Swift'

  s.ios.deployment_target  = '9.0'
  s.osx.deployment_target  = '10.10'
  # s.tvos.deployment_target = '9.0'
  # s.watchos.deployment_target = '2.0'
  s.swift_versions = ['5.0', '5.2']

  s.module_name = 'WrapSwift'
  s.source_files = "Sources/#{s.module_name}/*.{swift}"
  s.dependency 'CCppWrapObjC', "#{s.version}"
end
