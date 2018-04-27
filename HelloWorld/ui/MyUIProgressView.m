//
//  MyUIProgressView.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIProgressView.h"

@interface MyUIProgressView ()

@end

@implementation MyUIProgressView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    /**=========================UIProgressView
     
     ======================================================**/
    UIProgressView *progressView=[[UIProgressView alloc]
                                  initWithFrame:CGRectMake(20, 400, 280, 30 )];
    progressView.progressTintColor=[UIColor redColor];
    progressView.trackTintColor=[UIColor blueColor];
    [self.view addSubview:progressView];
    progressView.progress=0.5;
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
