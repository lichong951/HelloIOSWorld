//
//  MyNetworking.m
//  HelloWorld
//
//  Created by lichong on 2018/5/16.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyNetworking.h"

@implementation MyNetworking
+ (MyNetworking *)sharedNetWorking{
    static MyNetworking *netWorking = nil; static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{ netWorking = [[MyNetworking alloc] init]; }); return netWorking;
}
@end
