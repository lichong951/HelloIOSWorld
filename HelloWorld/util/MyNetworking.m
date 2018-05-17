//
//  MyNetworking.m
//  HelloWorld
//
//  Created by lichong on 2018/5/16.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyNetworking.h"

@implementation MyNetworking

//+ (MyNetworking *)sharedNetWorking{
//    static MyNetworking *netWorking = nil; static dispatch_once_t predicate;
//    dispatch_once(&predicate, ^{ netWorking = [[MyNetworking alloc] init]; }); return netWorking;
//}
+ (MyNetworking *)sharedNetWorking{
        static MyNetworking *netWorking = nil;
    static dispatch_once_t predicate;
        dispatch_once(&predicate, ^{
            netWorking = [[MyNetworking alloc] init];
            
        });
    return netWorking;
}
+(void)getRequestWithURLString:( NSString *)urlStr finish:( void(^)(BOOL success, NSData *data)) finish{
    urlStr=[urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    
    if ([MyNetworking sharedNetWorking].HTTPHeadersDic) {
        for (NSString *key in [MyNetworking sharedNetWorking].HTTPHeadersDic) {

        }
    }

    [session GET:urlStr parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
                    NSLog(@"请求成功");
                } failure:^(NSURLSessionDataTask *task, NSError *error) {
                    NSLog(@"请求失败");
                }];
    
}
+ (void)postRequestWithURLString:(NSString *)urlStr paramDic:(NSDictionary *)param finish:(void (^)(BOOL, NSData *))finish{
    urlStr=[urlStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    AFHTTPSessionManager *session = [AFHTTPSessionManager manager];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if ([MyNetworking sharedNetWorking].HTTPHeadersDic) {
        for (NSString *key in [MyNetworking sharedNetWorking].HTTPHeadersDic) {
            [dict setObject:[MyNetworking sharedNetWorking].HTTPHeadersDic[key] forKey:key];
        }
    }
    [session POST:urlStr parameters:param progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        NSLog(@"success--%@--%@",[responseObject class],responseObject);
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        NSLog(@"failure--%@",error);
    }];

}

@end
