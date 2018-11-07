Pod::Spec.new do |s|
  s.name = 'IBMTealeafReactNativeStaticDebug'
  s.version = '10.2.0.264'
  s.author = 'IBM'
  s.license = { :type => 'Proprietary, IBM', :file => 'Licenses/LA_en' }
  s.homepage = 'https://github.com/ibm-watson-cxa/IBMTealeaf'
  s.summary = 'IBM Tealeaf iOS SDK '
  s.platforms = { :ios => "9.0" }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/StaticDebug/TLFResources.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/StaticDebug/TealeafReactNative.framework/Headers/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/IBMTealeaf.git', :tag => '10.2.0.264'}
  s.vendored_frameworks = 'SDKs/iOS/StaticDebug/TealeafReactNative.framework'
  s.dependency 'EOCoreDebug'
end
