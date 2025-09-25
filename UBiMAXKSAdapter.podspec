
Pod::Spec.new do |s|
  s.name             = 'UBiMAXKSAdapter'
  s.version          = '4.8.10.1.0'
  s.summary          = 'UBiX聚合Sass SDK KS Adapter'
  s.homepage         = 'https://www.ubixai.com/product/md'
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhugq' => 'guoqiang.zhu@ubixai.com' }
  s.source           = { :git => 'https://github.com/ubixai/UBiMAXKSAdapter.git', :tag => s.version.to_s }
  s.ios.deployment_target = '10.0'

  s.static_framework = true
  s.vendored_frameworks = 'UBiMAXKSAdapter.framework'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'OTHER_LINK_FLAG' => '$(inherited) -ObjC' }

 s.dependency 'KSAdSDK', '4.8.10.1'
 s.dependency 'UBiMAXAdSDK' 

end
