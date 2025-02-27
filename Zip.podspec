#
# Be sure to run `pod lib lint Zip.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Zip"
  s.version          = "2.1.3"
  s.summary          = "Zip and unzip files in Swift."
  s.swift_version    = "5.3"
  s.swift_versions   = ["4.2", "5.0", "5.1", "5.3"]

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
                      A Swift framework for zipping and unzipping files. Simple and quick to use. Built on top of minizip.
                     DESC

  s.homepage         = "https://github.com/marmelroy/Zip"
  s.license          = 'MIT'
  s.author           = { "Roy Marmelstein" => "marmelroy@gmail.com" }
  s.source           = { :git => "https://github.com/marmelroy/Zip.git", :tag => s.version.to_s}
  s.social_media_url   = "http://twitter.com/marmelroy"

  s.ios.deployment_target = '9.0'
  s.requires_arc = true

  s.source_files = [
         'Zip/**/{*.swift,*.h,*.m,*.c,*.modulemap}',
  ]
  s.public_header_files = [
         'Zip/*.h'
  ]
  s.preserve_paths = [
    'Zip/minizip/module/module.modulemap',
  ]
  s.pod_target_xcconfig = {
       "OTHER_SWIFT_FLAGS" => '$(inherited) -D HAVE_AES',
       "OTHER_CFLAGS" => '$(inherited) -D HAVE_AES',
       'SWIFT_INCLUDE_PATHS' => [
          '$(PODS_ROOT)/Zip/minizip/module',
          '$(PODS_TARGET_SRCROOT)/Zip/minizip/module',
        ]
  }

  s.libraries = 'z'

end
