#
# Be sure to run `pod lib lint FBMemoryProfiler-Droar.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'FBMemoryProfiler-Droar'
  s.version          = '1.0.0'
  s.summary          = 'A Droar plugin for FBMemoryProfiler'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This adds an integration for FBMemoryProfiler straight in Droar.
                       DESC

  s.homepage         = 'https://github.com/myriadmobile/FBMemoryProfiler-Droar'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Myriad Mobile' => 'developers@myriadmobile.com' }
  s.source           = { :git => 'https://github.com/myriadmobile/FBMemoryProfiler-Droar.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'FBMemoryProfiler-Droar/Classes/**/*'
  
# s.resource_bundles = {
#   'FBMemoryProfiler-Droar' => ['FBMemoryProfiler-Droar/Classes/**/*.{xib,png,jpeg,jpg,txt}']
# }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.dependency 'FBMemoryProfiler'
  s.dependency 'Droar'
end
