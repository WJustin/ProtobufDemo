#import "Sign.pbobjc.h"

#import <ProtoRPC/ProtoService.h>
#import <RxLibrary/GRXWriteable.h>
#import <RxLibrary/GRXWriter.h>



NS_ASSUME_NONNULL_BEGIN

@protocol PTMHelloService <NSObject>

#pragma mark SayHello(HelloRequest) returns (HelloResponse)

- (void)sayHelloWithRequest:(PTMHelloRequest *)request handler:(void(^)(PTMHelloResponse *_Nullable response, NSError *_Nullable error))handler;

- (GRPCProtoCall *)RPCToSayHelloWithRequest:(PTMHelloRequest *)request handler:(void(^)(PTMHelloResponse *_Nullable response, NSError *_Nullable error))handler;


@end

/**
 * Basic service implementation, over gRPC, that only does
 * marshalling and parsing.
 */
@interface PTMHelloService : GRPCProtoService<PTMHelloService>
- (instancetype)initWithHost:(NSString *)host NS_DESIGNATED_INITIALIZER;
+ (instancetype)serviceWithHost:(NSString *)host;
@end

NS_ASSUME_NONNULL_END
