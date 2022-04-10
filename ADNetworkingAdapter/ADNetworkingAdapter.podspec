#
# Be sure to run `pod lib lint ADNetworkingAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|

s.name = 'ADNetworkingAdapter'
s.version = '0.1.3'
s.platform = :ios, '9.0'
s.summary = 'ADNetworkingAdapter used for mediation with the AnyThinkiOS'
s.author = { 'Ben_tan' => '3539043734@qq.com' }

s.homepage = "https://github.com/CocoaPods/Specs/search?o=desc&q=#{s.name}&s=indexed"
s.license =
{
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2022 AnyThinkiOS Corp. All rights reserved.

The AnyThinkiOS SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

s.source = { :git => 'git@github.com:Ben21hao/SDKDev.git', :tag => s.version.to_s }
s.vendored_frameworks = 'ADNetworkingAdapter/ADNetworkingAdapter/Classes/*.framework' 

# s.source =
# {
#     :http => "https://artifacts.applovin.com/ios/com/applovin/mediation/adcolony-adapter/#{s.name}-#{s.version}.zip",
#     :type => 'zip'
# }

# s.vendored_frameworks = "#{s.name}-#{s.version}/#{s.name}.framework"

s.dependency 'GDTMobSDK','4.13.50'
s.dependency 'AnyThinkiOS','5.8.13'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
}

s.description = <<-DESC

SDK turns mobile into the medium of choice for advertisers.

OUR MISSION

Enable advertisers to make ROI-based marketing decisions and deliver relevant content on mobile.

Our marketing platform reaches new users and matches them with relevant brands - ensuring you reach the users that are likely to engage.

We deliver relevant content to over a billion mobile consumers every month. With AppLovin, advertisers attain their mobile marketing goals.

DESC

end
