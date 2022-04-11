#
# Be sure to run `pod lib lint ADZipAdapter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ADZipAdapter'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ADZipAdapter.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/bo/ADZipAdapter'
  # s.homepage = "https://github.com/CocoaPods/Specs/search?o=desc&q=#{s.name}&s=indexed"
  s.author           = { 'bo' => '3539043734@qq.com' }
  s.source           = { :git => 'https://github.com/bo/ADZipAdapter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  
  # s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.license =
{
  :type => 'Commercial License',
  :text => <<-LICENSE

Copyright 2022 AnyThinkiOS Corp. All rights reserved.

The AnyThinkiOS SDK is available under a commercial license (https://www.applovin.com/eula).

LICENSE
}

#s.source_files = 'ADKsAdapter/Classes/**/*'

# s.source = { :git => 'git@github.com:Ben21hao/SDKDev.git', :tag => s.version.to_s }
# s.vendored_frameworks = 'ADKsAdapter/ADKsAdapter/Classes/*.framework' 
s.source =
{
    # :http => "https://artifacts.applovin.com/ios/com/applovin/mediation/adcolony-adapter/#{s.name}-#{s.version}.zip",
    :http => "https://artifacts.applovin.com/ios/com/applovin/mediation/vungle-adapter/AppLovinMediationVungleAdapter-6.10.6.2.zip",
    :type => 'zip'
}
s.vendored_frameworks = "AppLovinMediationVungleAdapterA-6.10.6.2/AppLovinMediationVungleAdapter.framework"
# s.vendored_frameworks = "#{s.name}-#{s.version}/#{s.name}.framework"

s.dependency 'VungleSDK-iOS'
s.dependency 'AppLovinSDK'

s.pod_target_xcconfig =
{
  'VALID_ARCHS' => 'arm64 arm64e armv7 armv7s x86_64',
  'VALID_ARCHS[sdk=iphoneos*]' => 'arm64 arm64e armv7 armv7s',
  'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64'
}

s.description = <<-DESC

SDK turns mobile into the medium of choice for advertisers.

DESC

end
