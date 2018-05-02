//
//  MainViewControllerForSaFari.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MainViewControllerForSaFari.h"

@interface MainViewControllerForSaFari ()<UIWebViewDelegate,UIGestureRecognizerDelegate>

@end

@implementation MainViewControllerForSaFari
{
    UIWebView * webView;
    UITextField * searchBar;
    BOOL isUp;
    UILabel *titleLable;
    UISwipeGestureRecognizer * upSwipe;
    UISwipeGestureRecognizer *downSwipe;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    webView=[[UIWebView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64)];
    webView.scrollView.bounces=NO;
    webView.delegate=self;
    isUp=NO;
    
    titleLable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-40 ,20 )];
    titleLable.backgroundColor=[UIColor clearColor];
    titleLable.font=[UIFont systemFontOfSize:14];
    titleLable.textAlignment=NSTextAlignmentCenter;
    
    //
    NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"http://www.baidu.com"]];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    [self creatSearchBar];
    [self createGesture];
    [self createToolBar];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)creatSearchBar{
    searchBar=[[UITextField alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-40, 30)];
    searchBar.borderStyle=UITextBorderStyleRoundedRect;
    
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
