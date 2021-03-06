// Generated by the protocol buffer compiler.  DO NOT EDIT!
// source: Sign.proto

// This CPP symbol can be defined to use imports that match up to the framework
// imports needed when using CocoaPods.
#if !defined(GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS)
 #define GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS 0
#endif

#if GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS
 #import <Protobuf/GPBProtocolBuffers.h>
#else
 #import "GPBProtocolBuffers.h"
#endif

#if GOOGLE_PROTOBUF_OBJC_GEN_VERSION != 30001
#error This file was generated by a different version of protoc which is incompatible with your Protocol Buffer library sources.
#endif

// @@protoc_insertion_point(imports)

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wdeprecated-declarations"

CF_EXTERN_C_BEGIN

NS_ASSUME_NONNULL_BEGIN

#pragma mark - PTMSignRoot

/**
 * Exposes the extension registry for this file.
 *
 * The base class provides:
 * @code
 *   + (GPBExtensionRegistry *)extensionRegistry;
 * @endcode
 * which is a @c GPBExtensionRegistry that includes all the extensions defined by
 * this file and all files that it depends on.
 **/
@interface PTMSignRoot : GPBRootObject
@end

#pragma mark - PTMHelloRequest

typedef GPB_ENUM(PTMHelloRequest_FieldNumber) {
  PTMHelloRequest_FieldNumber_Greeting = 1,
};

@interface PTMHelloRequest : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *greeting;

@end

#pragma mark - PTMHelloResponse

typedef GPB_ENUM(PTMHelloResponse_FieldNumber) {
  PTMHelloResponse_FieldNumber_Reply = 1,
};

@interface PTMHelloResponse : GPBMessage

@property(nonatomic, readwrite, copy, null_resettable) NSString *reply;

@end

NS_ASSUME_NONNULL_END

CF_EXTERN_C_END

#pragma clang diagnostic pop

// @@protoc_insertion_point(global_scope)
