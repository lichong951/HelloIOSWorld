//
//  MyUIWebView.m
//  HelloWorld
//
//  Created by lichong on 2018/4/28.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIWebView.h"

@interface MyUIWebView ()

@end

@implementation MyUIWebView

- (void)viewDidLoad {
    [super viewDidLoad];
    UIWebView *webView=[[UIWebView alloc] initWithFrame:self.view.frame];
    NSURL *url=[NSURL URLWithString:@"http://www.baidu.com"];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
