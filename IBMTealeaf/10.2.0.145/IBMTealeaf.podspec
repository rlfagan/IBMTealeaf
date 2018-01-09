Pod::Spec.new do |s|
  s.name = 'IBMTealeaf'
  s.version = '10.2.0.145'
  s.author = 'IBM'
  s.license      = { :type => 'Proprietary, IBM', :file => 'Licenses/LA_en' }
  s.homepage = 'https://github.com/ibm-watson-cxa/IBMTealeaf'
  s.summary = 'IBM Tealeaf iOS SDK'
  s.platforms = { :ios => "9.0" }
  s.pod_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7' }
  s.user_target_xcconfig = { 'VALID_ARCHS' => 'arm64 armv7' }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Debug/Tealeaf.framework/TLFResources.bundle"
  s.source_files = 'SDKs/iOS/MiCloudDependencies/TealeafDynamicLoad.h', 'SDKs/iOS/MiCloudDependencies/TealeafDynamicLoad.m', 'SDKs/iOS/Debug/Tealeaf.framework/Headers/TLFApplicationHelper.h', 'SDKs/iOS/Debug/Tealeaf.framework/Headers/TLFPublicDefinitions.h'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/IBMTealeaf.git', :tag => '10.2.0.145'}
  s.vendored_frameworks = 'SDKs/iOS/Debug/Tealeaf.framework'
  s.dependency 'EOCore'
end
