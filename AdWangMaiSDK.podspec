#
#  Be sure to run `pod spec lint AdWangMaiSDK.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  spec.name         = "AdWangMaiSDK"
  spec.version      = "7.1.1.6"
  spec.summary      = "AdWangMaiSDK is a SDK from WangMai providing AD service."
  spec.description  = <<-DESC
    AdWangMaiSDK is a SDK from WangMai providing AD service.
                   DESC
  spec.homepage     = "https://github.com/yangdimuyi/AdWangMaiSDK-iOS.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author             = { "WangMai" => "yangdi.yang@adwangmai.com" }
  spec.platform     = :ios,"11.0"
  spec.ios.deployment_target = "11.0"
  spec.xcconfig = { 'VALID_ARCHS' => 'arm64 x86_64', 'VALID_ARCHS[sdk=iphoneos*]' => 'arm64', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64', 'OTHER_LDFLAGS' => ['-ObjC'], 'ENABLE_BITCODE' => 'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES'}
  spec.user_target_xcconfig = { 'OTHER_LDFLAGS' => ['-ObjC'], 'ENABLE_BITCODE' => 'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => ['-ObjC'], 'ENABLE_BITCODE' => 'NO', 'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.source       = { :git => "https://github.com/yangdimuyi/AdWangMaiSDK-iOS.git", :tag => "#{spec.version}" }
  spec.requires_arc = true
  spec.default_subspec = 'AdSDk'
  
  spec.subspec 'AdSDk' do |ss|
    ss.resource  = "WangMaiSDK/adwangmai_sdk.bundle"
    ss.ios.vendored_frameworks = 'WangMaiSDK/AdWangMaiSDK.framework'
    ss.frameworks = 'AppTrackingTransparency','AssetsLibrary','AdSupport','Audiotoolbox','AddressBook','AVKit','AVFoundation','Accelerate','CFNetwork','CoreServices','CoreImage','CoreLocation','CoreTelephony','CoreText','CoreML','CoreMotion','CoreFoundation','CoreGraphics','CoreMedia','CoreData','DeviceCheck','Foundation','ImageIO','JavaScriptCore','MobileCoreServices','MapKit','MessageUI','MediaPlayer','Photos','QuartzCore','QuickLook','SystemConfiguration','Security','StoreKit','SafariServices','UIKit','WebKit'
    ss.libraries = "z","resolv.9","xml2","c++","c++abi","z.1.2.5","sqlite3.0","sqlite3","bz2.1.0","bz2","iconv","resolv"
  end
  
  spec.subspec 'JDYunAdapter' do |ss|
     ss.platform     = :ios, '11.0'
     ss.vendored_libraries = 'WangMaiSDK/JDYunAdapter/*.a'
     ss.dependency 'AdWangMaiSDK/AdSDk'
     ss.dependency 'JADYun', '2.6.6'
     ss.dependency 'JADYunMotion', '2.6.6'
  end
  
  spec.subspec 'GDTAdapter' do |ss|
     ss.platform     = :ios, '11.0'
     ss.vendored_libraries = 'WangMaiSDK/GDTAdapter/*.a'
     ss.dependency 'AdWangMaiSDK/AdSDk'
     ss.dependency 'GDTMobSDK', '4.15.30'
  end
  
  spec.subspec 'TanxAdapter' do |ss|
     ss.platform     = :ios, '12.0'
     ss.vendored_libraries = 'WangMaiSDK/TanxAdapter/*.a'
     ss.dependency 'TanxSDK', '3.6.6'
     ss.dependency 'AdWangMaiSDK/AdSDk'
  end
  
  spec.subspec 'QuMengAdapter' do |ss|
     ss.platform     = :ios, '11.0'
     ss.vendored_libraries = 'WangMaiSDK/QuMengAdapter/*.a'
     ss.dependency 'QuMengAdSDK', '1.3.1'
     ss.dependency 'AdWangMaiSDK/AdSDk'
  end
  
  spec.subspec 'OneAdapter' do |ss|
     ss.platform     = :ios, '11.0'
     ss.vendored_libraries = 'WangMaiSDK/OneAdapter/*.a'
     ss.ios.vendored_frameworks = 'WangMaiSDK/OneAdapter/*.framework'
     ss.resource  = "WangMaiSDK/OneAdapter/*.bundle"
     ss.dependency 'AdWangMaiSDK/AdSDk'
  end
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  # spec.description  = <<-DESC
  #                 DESC

  # spec.homepage     = "http://EXAMPLE/AdWangMaiSDK"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # spec.license      = "MIT (example)"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  # spec.author             = { "yangdiyangdi" => "yangdi.yang@adwangmai.com" }
  # Or just: spec.author    = "yangdiyangdi"
  # spec.authors            = { "yangdiyangdi" => "yangdi.yang@adwangmai.com" }
  # spec.social_media_url   = "https://twitter.com/yangdiyangdi"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # spec.platform     = :ios
  # spec.platform     = :ios, "5.0"

  #  When using multiple platforms
  # spec.ios.deployment_target = "5.0"
  # spec.osx.deployment_target = "10.7"
  # spec.watchos.deployment_target = "2.0"
  # spec.tvos.deployment_target = "9.0"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  # spec.source       = { :git => "http://EXAMPLE/AdWangMaiSDK.git", :tag => "#{spec.version}" }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  # spec.source_files  = "Classes", "Classes/**/*.{h,m}"
  # spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
