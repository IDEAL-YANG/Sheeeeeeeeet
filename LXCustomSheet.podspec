# Run `pod lib lint Sheeeeeeeeet.podspec' to ensure this is a valid spec.

Pod::Spec.new do |s|
  s.name             = 'LXCustomSheet'
  s.version          = '1.0.0'
  s.summary          = 'Sheeeeeeeeet is a Swift library for custom iOS action sheets.'

  s.description      = <<-DESC
Sheeeeeeeeet is a Swift library for adding custom action sheets to your iOS apps.
It comes with many built-in item action sheet item types, and can be extended by
custom types are more specific to your app or domain.
                       DESC

  s.homepage         = 'https://github.com/IDEAL-YANG/Sheeeeeeeeet'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Ideal Yang' => 'lxyang6688@163.com' }
  s.source           = { :git => 'https://github.com/IDEAL-YANG/Sheeeeeeeeet.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'
  swift_version = '4.2'

  s.source_files = 'Sheeeeeeeeet/**/*.swift'
  s.resources    = 'Sheeeeeeeeet/**/*.xib'
end
