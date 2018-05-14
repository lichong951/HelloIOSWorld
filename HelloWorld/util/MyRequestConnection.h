//
//  MyRequestConnection.h
//  HelloWorld
//
//  Created by lichong on 2018/5/14.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MyRequestConnection : NSObject
-(void)startRequestWithURLString:(NSString *)urlStr finished:(void(^)(BOOL success,NSData *data))finish;
@property(nonatomic,strong)NSDictionary *HTTPHeadersDic;
@property(nonatomic,strong)NSString *urlStr;
@end
