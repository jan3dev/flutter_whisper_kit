#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_whisper_kit_apple.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_whisper_kit_apple'
  s.version          = '0.2.0'
  s.summary          = 'iOS and macOS implementation of the flutter_whisper_kit plugin for on-device speech recognition.'
  s.description      = <<-DESC
iOS and macOS implementation of the flutter_whisper_kit plugin, providing on-device speech recognition and transcription capabilities using WhisperKit.
                       DESC
  s.homepage         = 'https://github.com/r0227n/flutter_whisper_kit/tree/main/packages/flutter_whisper_kit_apple'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = 'Ryo24'

  # CocoaPods requires a primary key (:git, :http, etc.) for `source`.
  # Use a public tag URL so that `pod lib lint` works both locally and in CI.
  s.source           = { :git => 'https://github.com/r0227n/flutter_whisper_kit.git',
                         :tag => "v#{s.version}" }

  s.source_files = 'flutter_whisper_kit_apple/Sources/flutter_whisper_kit_apple/**/*'

  # If your plugin requires a privacy manifest, for example if it collects user
  # data, update the PrivacyInfo.xcprivacy file to describe your plugin's
  # privacy impact, and then uncomment this line. For more information,
  # see https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
  # s.resource_bundles = {'flutter_whisperkit_apple_privacy' => ['flutter_whisper_kit_apple/Sources/flutter_whisper_kit_apple/PrivacyInfo.xcprivacy']}

  s.ios.dependency 'Flutter'
  s.osx.dependency 'FlutterMacOS'

  s.ios.deployment_target = '16.0'
  s.osx.deployment_target = '13.0'

  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES' }
  s.swift_version = '5.0'

  s.spm_dependency 'WhisperKit/WhisperKit'
end
