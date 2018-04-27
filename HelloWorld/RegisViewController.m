//
//  RegisViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "RegisViewController.h"
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
@interface RegisViewController ()

@end

@implementation RegisViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(20, 15, SCREEN_SIZE.width-40, 60)];
    label.font=[UIFont systemFontOfSize:23];
    label.text=@"注册界面";
    //    label.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label];
    UIButton *backBtn=[UIButton buttonWithType:UIButtonTypeSystem];
    backBtn.frame=CGRectMake(SCREEN_SIZE.width/2-50, 220, 100, 30);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
}
-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
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
