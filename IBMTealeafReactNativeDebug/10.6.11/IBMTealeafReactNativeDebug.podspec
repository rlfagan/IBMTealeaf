Pod::Spec.new do |s|
  s.name = 'IBMTealeafReactNativeDebug'
  s.version = '10.6.11'
  s.author = 'Acoustic, L.P.'
  s.license = { :type => 'Proprietary, Acoustic, L.P.', :file => 'Licenses/License' }
  s.homepage = 'https://github.com/ibm-watson-cxa/IBMTealeaf'
  s.summary = 'Acoustic Tealeaf iOS SDK '
  s.platforms = { :ios => "9.0" }
  s.default_subspec = 'Core'
  s.subspec 'Core' do |core|
    core.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
    core.library = 'z'
    core.resource = "SDKs/iOS/Debug/TealeafReactNative.framework/TLFResources.bundle"
    core.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Debug/TealeafReactNative.framework/Headers/"/** ' }
    core.source = { :git => 'https://github.com/ibm-watson-cxa/IBMTealeaf.git', :tag => '10.6.11'}
    core.vendored_frameworks = 'SDKs/iOS/Debug/TealeafReactNative.framework'
    core.dependency 'EOCoreDebug'
  end
  s.subspec 'MD5' do |md5|
    md5.dependency 'IBMTealeafDebug/Core'
    md5.dependency 'TealeafMD5Debug'
  end
  s.subspec 'SHA512' do |sha512|
    sha512.dependency 'IBMTealeafDebug/Core'
    sha512.dependency 'TealeafSHA2Debug'
  end
end
