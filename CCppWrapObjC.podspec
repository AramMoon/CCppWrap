Pod::Spec.new do |s|
  s.name        = 'CCppWrapObjC'
  s.version     = '0.1.2'
  s.authors     = 'Aram'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage    = 'https://arammoon.web.app/'
  s.source      = { :git => 'https://github.com/arammoon/CCppWrap.git', :tag => s.version }
  s.summary     = 'Synchronization construct for Objective-C'
  s.description = 'C C++ Library for Objective-C'

  s.ios.deployment_target  = '9.0'
  s.osx.deployment_target  = '10.10'
  # s.tvos.deployment_target = '9.0'
  # s.watchos.deployment_target = '2.0'

  s.module_name = 'WrapObjC'
  s.prefix_header_file = false
  s.header_mappings_dir = "Sources/#{s.module_name}/include/"
  s.public_header_files = "Sources/#{s.module_name}/include/**/*.h"
  # s.private_header_files = "Sources/#{s.module_name}/include/NLPrivate.h"
  s.source_files = "Sources/#{s.module_name}/**/*.{h,m,mm,hpp,cpp}"
  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => "\"${PODS_TARGET_SRCROOT}/Sources/#{s.module_name}/include\""
  }
end