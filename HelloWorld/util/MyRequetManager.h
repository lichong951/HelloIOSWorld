//
//  MyRequetManager.h
//  HelloWorld
//
//  Created by lichong on 2018/5/14.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyRequestConnection.h"

@interface MyRequetManager : NSObject
+(MyRequetManager *)sharedManager;
-(void)addRequestToManager:(NSString *)urlStr finished:(void(^)(BOOL success,NSData *data))finish;

@property(nonatomic,strong)NSDictionary *HTTPHeadersDic;
@end
