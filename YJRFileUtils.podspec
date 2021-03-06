#
# Be sure to run `pod lib lint YJRFileUtils.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "YJRFileUtils"
  s.version          = "0.1.0"
  s.summary          = "File Utilities"
  s.description      = <<-DESC
                       file utilities.
                       DESC
  s.homepage         = "https://github.com/yujiroarai/YJRFileUtils"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "yujiroarai" => "yujiroarai@gmail.com" }
  s.source           = { :git => "https://github.com/yujiroarai/YJRFileUtils.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/yujiroarai'

  s.platform     = :ios, '8.0'
  s.requires_arc = true
  s.source_files = 'Pod/Classes'
end
