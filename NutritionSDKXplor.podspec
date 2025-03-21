#
# Be sure to run `pod lib lint VitaleSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NutritionSDKXplor'
  s.version          = '1.0.4'
  s.summary          = 'Intelligent, automatic, comprehensive, adaptive Training System'
  s.homepage         = 'https://www.myvitale.com/'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Miguel Muñoz' => 'miguel.munoz@myvitale.com' }
  s.source           = { :git => 'https://github.com/miguelmunozfer/NutritionSDKPlugin.git', :tag => "1.0.4" }
  s.ios.deployment_target = '12.0'
  s.static_framework = true
  # s.resources = "**/**/en.lproj"
  s.resource_bundles = {
    'NutritionSDKXplorResources' => ["**/*.lproj", "**/*.strings", "**/*.xib", "**/*.nib", "**/*.png"]
  }
  s.vendored_frameworks = 'NutritionIASDK.xcframework' # Your XCFramework
  s.swift_version = "5.0"
#  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
#  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
 # s.xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }

end
