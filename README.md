# IBMTealeaf

IBM Tealeaf is a customer behavioral analytics SDK as documented [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions)


## Getting Started

### Prerequisites

You need to have recent cocoapods version installed on your Mac OS. Please refer to cocoapods website for the details.

For SDK prerequisites and documentation, please refer to the SDK documentation [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/acoustic-experience-analytics-tealeaf-sdk-for-ios-standard-and-mobile-editions)

### Installing

Add following lines at the begining of your Podfile

Set platform as iOS 9

`platform :ios, '9.0'`

Uncomment use_frameworks

`use_frameworks!`

In the respective targets for your project in the Podfile add the following line if you want to use IBM Tealeaf SDK's release version which needs to be used in your production version of your application.

`pod 'IBMTealeaf'`

In the respective targets for your project in the Podfile add the following line if you want to use IBM Tealeaf SDK's release version with version number. Otherwise you will get the beta version that might new feature or fixes which have not been full tested or approved.

`pod 'IBMTealeafDebug'`


Remember you can use only one of  `pod 'IBMTealeaf'` and `pod 'IBMTealeafDebug'`. Do not use both at the same time.

### Choosing A Suitable Hashing Library
Starting Tealeaf version 10.6.20 onwards, the SDKs support 3 different hashing algorithms. SHA256, SHA512 and MD5; default being SHA256. If you want to use SHA256 no additional integration steps are required. Previously Tealeaf supported MD5 only and was the default algorithm. Apple is deprecating the MD5 APIs, hence we are moving to SHA2.

  ###### Using SHA256
  No additional integration steps required. IBMTealeaf and IBMTealeafDebug by default use SHA256.
  
  ###### Using SHA512
  Instead of `pod 'IBMTealeaf'` or `pod 'IBMTealeafDebug'` in your Podfile, please use `pod 'IBMTealeaf/SHA512'` or `pod 'IBMTealeafDebug/SHA512'`
  
  ###### Using MD5
  Instead of `pod 'IBMTealeaf'` or `pod 'IBMTealeafDebug'` in your Podfile, please use `pod 'IBMTealeaf/MD5'` or `pod 'IBMTealeafDebug/MD5'`


You may read more about Hashing Libraries [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/hashing-libraries-for-computing-unique-ids-md5-sha256-and-sha512)

### Uploading Application Images To Tealeaf Server
Whichever hashing alrorithm you choose, we recommend you repackage your application images and upload them to Tealeaf Server. Detailed steps are available [here](https://developer.goacoustic.com/acoustic-exp-analytics/docs/capturing-and-uploading-images-with-the-image-tool)


## Troubleshooting

If you are using Debug version of IBM Tealeaf SDK. i.e. `pod 'IBMTealeafDebug'` , then you may edit your project's scheme in XCode and add environmental variable `EODebug`and set its value to 1; also add environmental variable `TLF_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Tealeaf support engineers will ask you for these logs.

## License

License file can be read [here](https://github.com/ibm-watson-cxa/IBMTealeaf/tree/master/Licenses)
