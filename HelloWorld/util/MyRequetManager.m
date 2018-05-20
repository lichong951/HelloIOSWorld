//
//  MyRequetManager.m
//  HelloWorld
//
//  Created by lichong on 2018/5/14.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyRequetManager.h"

@implementation MyRequetManager
{
    NSMutableArray * _requestConnectionArray;
}

+(MyRequetManager *)sharedManager{
    static MyRequetManager *manager=nil;
    static dispatch_once_t predicate;
    
    dispatch_once(&predicate, ^{
        manager=[[MyRequetManager alloc]init];
    });
    return manager;
}

-(instancetype)init{
    self=[super init];
    if (self) {
        _requestConnectionArray=[[NSMutableArray alloc]init];
    }
         return self;
}

- (void)addRequestToManager:(NSString *)urlStr finished:(void (^)(BOOL, NSData *))finish{
    for (MyRequestConnection *conn in _requestConnectionArray) {
        if ([conn.urlStr isEqualToString:urlStr]) {
            return;
        }
    }
    MyRequestConnection *conn=[[MyRequestConnection alloc]init];
    if (self.HTTPHeadersDic) {
        conn.HTTPHeadersDic=self.HTTPHeadersDic;
    }
    [_requestConnectionArray addObject:conn];
    [conn startRequestWithURLString:urlStr finished:^(BOOL success, NSData *data) {
        [_requestConnectionArray removeObject:conn];
        finish(success,data);
    }];
    
}
@end
