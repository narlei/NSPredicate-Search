#
# Be sure to run `pod lib lint NSPredicateSearch.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NSPredicateSearch'
  s.version          = '0.1.1'
  s.summary          = 'A NSPredicate category to help with a dinamic Search (smart search)'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  A NSPrecicate to smart search as Google Search in Array, works with Objective-C and Swift.
  Use to a dinamic search in tableviews with local data. Fast and Smart.
                       DESC

  s.homepage         = 'https://github.com/narlei/NSPredicate-Search.git'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Narlei A Moreira' => 'narlei.guitar@gmail.com' }
  s.source           = { :git => 'https://github.com/narlei/NSPredicate-Search.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/narleiguitar'

  s.ios.deployment_target = '8.0'

  s.source_files = 'NSPredicateSearch/Classes/**/*'
  
  # s.resource_bundles = {
  #   'NSPredicateSearch' => ['NSPredicateSearch/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
