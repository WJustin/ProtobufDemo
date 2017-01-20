#
# Be sure to run `pod lib lint ProtobufDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ProtobufDemo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of ProtobufDemo.'

  s.description      = <<-DESC
      Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/<WJustin>/ProtobufDemo'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Justin.Wang' => 'rongchao.wang@ele.me' }
  s.source           = { :git => 'https://github.com/<WJustin>/ProtobufDemo.git', :tag => s.version.to_s }

  s.ios.deployment_target = '7.0'
  s.source_files = 'ProtobufDemo/Classes/**/*'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'Protobuf'
end
