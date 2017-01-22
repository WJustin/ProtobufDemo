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

  s.ios.deployment_target = "7.1"

  pods_root = 'Example/Pods'
  protoc_dir = "#{pods_root}/!ProtoCompiler"
  protoc = "#{protoc_dir}/protoc"
  plugin = "#{pods_root}/!ProtoCompiler-gRPCPlugin/grpc_objective_c_plugin"
  message_dir = "#{s.name}/Classes/Message"
  service_dir = "#{s.name}/Classes/Service"
  proto_path = "../ProtoFile"
  s.prepare_command = <<-CMD
    #{protoc} \
     --plugin=protoc-gen-grpc=#{plugin} \
     --objc_out=#{message_dir} \
     --grpc_out=#{service_dir} \
     --proto_path=#{proto_path} \
      #{proto_path}/*.proto
  CMD

  s.subspec "Messages" do |ms|
    ms.source_files = "#{message_dir}/*.pbobjc.{h,m}", "#{message_dir}/**/*.pbobjc.{h,m}"
    ms.header_mappings_dir = message_dir
    ms.requires_arc = false
    ms.dependency "Protobuf"
  end

  s.subspec "Services" do |ss|
    ss.source_files = "#{service_dir}/*.pbrpc.{h,m}", "#{service_dir}/**/*.pbrpc.{h,m}"
    ss.header_mappings_dir = service_dir
    ss.requires_arc = true
    ss.dependency "gRPC-ProtoRPC"
    ss.dependency "#{s.name}/Messages"
  end

  s.pod_target_xcconfig = {
    # This is needed by all pods that depend on Protobuf:
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1',
    # This is needed by all pods that depend on gRPC-RxLibrary:
   'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
  }

end
