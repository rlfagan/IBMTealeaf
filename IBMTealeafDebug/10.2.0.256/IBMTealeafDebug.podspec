Pod::Spec.new do |s|
  s.name = 'IBMTealeafDebug'
  s.version = '10.2.0.256'
  s.author = 'IBM'
  s.license = { :type => 'Proprietary, IBM', :file => 'Licenses/LA_en' }
  s.homepage = 'https://github.com/ibm-watson-cxa/IBMTealeaf'
  s.summary = 'IBM Tealeaf iOS SDK '
  s.platforms = { :ios => "9.0" }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Debug/Tealeaf.framework/TLFResources.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Debug/Tealeaf.framework/Headers/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/IBMTealeaf.git', :tag => '10.2.0.256'}
  s.vendored_frameworks = 'SDKs/iOS/Debug/Tealeaf.framework'
  s.dependency 'EOCoreDebug'
end
