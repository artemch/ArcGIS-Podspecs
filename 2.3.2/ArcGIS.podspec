Pod::Spec.new do |s|
  s.name     = 'ArcGIS'
  s.version  = '2.3.2'
  s.license      = {
    :type => 'Commercial',
    :text => <<-LICENSE
              Copyright © 2010-2013 Esri, Inc.
              All rights reserved.
              See: http://resources.arcgis.com/content/licensing-your-ios-application
    LICENSE
  }
  s.summary  = 'An Objective-C API that allows you to add mapping and GIS functionality to your iPhone, iPod touch, and iPad applications.'
  s.homepage = 'http://www.esri.com'
  s.author   = { 'Esri, Inc' => 'arcgis4iphone@esri.com' }
  s.platform = :ios
  s.source   = { :http => 'file:///Users/Shared/Library/ArcGIS/2.3.2/ArcGIS.framework.zip' }
  s.preserve_paths = 'ArcGIS.framework/*'
  s.resources = 'ArcGIS.framework/Versions/Current/Resources/ArcGIS.bundle'
  s.library   = 'z', 'stdc++'
  s.framework = 'CoreGraphics', 'CoreLocation',  'CoreText', 'Foundation', 'QuartzCore', 'MediaPlayer', 'MobileCoreServices', 'Security', 'UIKit'
  s.xcconfig  =  { 'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/ArcGIS"',
                   'OTHER_LDFLAGS' => '-ObjC -all_load -framework ArcGIS' }
end