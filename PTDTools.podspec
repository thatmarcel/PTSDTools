#
# Be sure to run `pod lib lint PTDTools.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PTDTools'
  s.version          = '0.1.0'
  s.summary          = 'A short description of PTDTools.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/patrik-svobodik/PTDTools'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Patrik Svoboda' => 'svob.pata@gmail.com' }
  s.source           = { :git => 'https://github.com/patrik-svobodik/PTDTools.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/PatrikTheDev'

  s.ios.deployment_target = '10.0'
  s.tvos.deployment_target = '11.0'

  s.source_files = 'PTDTools/Classes/**/*'
  
  # s.resource_bundles = {
  #   'PTDTools' => ['PTDTools/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation'
  s.dependency 'Cartography'
  s.ios.dependency 'Haptica'
  s.ios.dependency 'PanModal'
  s.tvos.dependency 'TvOSSlider'
  s.swift_version = "5.2"
end
