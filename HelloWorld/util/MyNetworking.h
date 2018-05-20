//
//  MyNetworking.h
//  HelloWorld
//
//  Created by lichong on 2018/5/16.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AFNetworking/AFNetworking.h>


@interface MyNetworking : NSObject
@property( nonatomic, strong) NSDictionary * HTTPHeadersDic;

+(MyNetworking *)sharedNetWorking;

+(void)getRequestWithURLString:(NSString *)urlStr finish:(void(^)(BOOL success, NSData *data)) finish;

+( void) postRequestWithURLString:( NSString *)urlStr paramDic:( NSDictionary *)param finish:( void(^)( BOOL success, NSData *data)) finish;


@end
