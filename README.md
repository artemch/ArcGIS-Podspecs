ArcGIS-Podspecs
===============
The ArcGIS-Podspecs project provides a local podspec for each version of the Esri Runtime SDK for iOS going back to 2.3.2. These enable you to manage your Esri iOS SDK dependency like any other CocoaPod.

You will need to download and install the SDK directly from Esri, as I am not authorized to distribute it.

The current and previous versions of the Esri iOS SDK can be found [here](http://www.esri.com/apps/products/download/index.cfm?fuseaction=download.all#ArcGIS_Runtime_SDK_for_iOS). An Esri Global Account may be required to download.

For additional information on the CocoaPods project, please see [CocoaPods.org](http://cocoapods.org).

### How To Get This All Setup
______

1. Create a directory at /Users/Shared/Library/ArcGIS

2. Download the master zip or clone this repo into that directory. 

    This will create a subdirectory for each version of the Esri iOS SDK. At current writing, these are 2.3.2, 10.1.1, and 10.1.1-u1. Each directory will contain an ArcGIS.podspec file that points to an (as of yet non-existent) zip file in the same directory.

3. Download and install the latest version of the Esri iOS SDK.

4. Find the ArcGIS.framework "file" that was installed and compress it to a zip file. This file should be called ArcGIS.framework.zip

    This file will be located in the $(HOME)/Library/SDKs/ArcGIS/iOS/ directory.

    Note: The user's Library directory is hidden by default. You can issue the command _chflags nohidden ~/Library/_ in the Terminal application to unhide it. This will enable you to browse to it using the Finder.

5. Move the ArcGIS.framework.zip file to the podspec folder for the latest version. 

    As of this writing that would be /Users/Shared/Library/ArcGIS/10.1.1-u1. This folder should now contain the ArcGIS.podscpec fie from this repo, plus your zipped up framework file.
    
6. Repeat this process for any earlier versions of the SDK that you wish to use.

7. Each time a new version of the SDK is released, update your copy of this repo and add the zip file to the new directory.

### Add the Esri iOS SDK to an XCode Project using CocoaPods

1. Create a new project

2. Add an empty Podfile

```
platform :ios, '6.0'
pod 'ArcGIS', :podspec => '/Users/Shared/Library/ArcGIS/10.1.1-u1/ArcGIS.podspec'

```

3. 
