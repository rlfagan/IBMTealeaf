# IBMTealeaf

IBM Tealeaf is a customer behavioral analytics SDK as documented [here](https://developer.ibm.com/customer-engagement/docs/watson-marketing/ibm-watson-customer-experience-analytics/ibm-watson-customer-experience-analytics-mobile-basic-edition/)


## Getting Started

### Prerequisites

You need to have recent cocoapods version installed on your Mac OS. Current version is 1.6.1. Please refer to cocoapods website for the details.

For SDK prerequisites and documentation, please refer to the SDK documentation [here](https://developer.ibm.com/customer-engagement/docs/watson-marketing/ibm-watson-customer-experience-analytics/ibm-watson-customer-experience-analytics-mobile-basic-edition/)

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

## Troubleshooting

If you are using Debug version of IBM Tealeaf SDK. i.e. `pod 'IBMTealeafDebug'` , then you may edit your project's scheme in XCode and add environmental variable `EODebug`and set its value to 1; also add environmental variable `TLF_DEBUG` and set its value to 1. This will make the SDK to start writing debug logs to your xcode console window. If and when you want to report issues, the Tealeaf support engineers will ask you for these logs.

## License

License files can be read [here](https://github.com/ibm-watson-cxa/IBMTealeaf/tree/master/Licenses)
