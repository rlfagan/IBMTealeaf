Pod::Spec.new do |s|
  s.name = 'IBMTealeaf'
  s.version = '10.5.5'
  s.author = 'IBM'
  s.license = { :type => 'Proprietary, IBM', :file => 'Licenses/License' }
  s.homepage = 'https://github.com/ibm-watson-cxa/IBMTealeaf'
  s.summary = 'IBM Tealeaf iOS SDK '
  s.platforms = { :ios => "9.0" }
  s.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
  s.library = 'z'
  s.resource = "SDKs/iOS/Release/Tealeaf.framework/TLFResources.bundle"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Release/Tealeaf.framework/Headers/"/** ' }
  s.source = { :git => 'https://github.com/ibm-watson-cxa/IBMTealeaf.git', :tag => '10.5.5'}
  s.vendored_frameworks = 'SDKs/iOS/Release/Tealeaf.framework'
  s.dependency 'EOCore'
end
