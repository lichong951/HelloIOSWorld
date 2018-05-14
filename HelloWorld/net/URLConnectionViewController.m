//
//  URLConnectionViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/5/14.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "URLConnectionViewController.h"

@interface URLConnectionViewController ()<NSURLConnectionDelegate>
{
    NSMutableData *_data;
}
@end

@implementation URLConnectionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL * url = [NSURL URLWithString:@"https://www.baidu.com"];
    NSMutableURLRequest * request = [NSMutableURLRequest requestWithURL: url];
    [request setValue:@"c925fbc1226c37b905a4d1e2a8cbbe99" forHTTPHeaderField:@"apikey"];

//    NSURL *url=[NSURL URLWithString:@"http://www.tuling123.com/openapi/api"];
//    NSMutableURLRequest *request=[NSMutableURLRequest requestWithURL:url];
//    [request setValue:@"5725338003333615ed6d7263bbd46e9c" forHTTPHeaderField:@"key"];
//    [request setValue:@"我想看新闻" forHTTPHeaderField:@"info"];
//
//    NSData *data=[NSURLConnection sendSynchronousRequest:request returningResponse:nil error:nil];
//    NSString *dataStr=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
//    NSLog(@"%@",dataStr);
    
    

//    [NSURLConnection sendAsynchronousRequest: request queue:[ NSOperationQueue mainQueue]completionHandler:^( NSURLResponse * _Nullable response, NSData * _Nullable data, NSError * _Nullable connectionError) { NSString * dataStr = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
//        NSLog(@"%@", dataStr); }];
//NSLog(@" 异步 进行 网络 请求");
    
    
    
//    NSLog(@"代理回调");
//    NSURLConnection * connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
//
//
    NSLog(@"MyRequetManager");
    MyRequetManager *manager=[MyRequetManager sharedManager];
//    manager.HTTPHeadersDic=@{};
    [manager addRequestToManager:@"https://www.baidu.com" finished:^(BOOL success, NSData *data) {
        if (success) {
            NSString *dataStr=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
            NSLog(@"MyRequetManager %@",dataStr);
        }else{
            NSLog(@"MyRequetManager error");
        }
    }];
}

-(void)connection:(NSURLConnection *)connection didReceiveResponse:(nonnull NSURLResponse *)response{
    NSLog(@"开始接收数据");
    _data=[[NSMutableData alloc] init];
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(nonnull NSData *)data{
    [_data appendData:data];
}



@end
