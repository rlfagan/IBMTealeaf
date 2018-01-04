Pod::Spec.new do |s|
  s.name = 'IBMTealeaf'
  s.version = '10.2.0.136'
  s.author = 'IBM'
  s.license      = { :type => 'Proprietary, IBM', :file => 'Licenses/LA_en' }
  s.homepage = 'https://github.com/ibm-watson-cxa/IBMTealeaf'
  s.summary = 'IBM Tealeaf iOS SDK'
  s.platforms = { :ios => "9.0" }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Debug/Tealeaf.framework/TLFResources.bundle"
  s.source_files = 'SDKs/iOS/MiCloudDependencies/TealeafDynamicLoad.h', 'SDKs/iOS/MiCloudDependencies/TealeafDynamicLoad.m'
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/IBMTealeaf.git', :tag => '10.2.0.136'}
  s.vendored_frameworks = 'SDKs/iOS/Debug/Tealeaf.framework'
  s.dependency 'EOCore'
end
