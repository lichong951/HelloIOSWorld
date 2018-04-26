//
//  LoginViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/26.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "LoginViewController.h"


@interface LoginViewController ()


@end

@implementation LoginViewController
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
- (void)viewDidLoad {
    [super viewDidLoad];
    _loginText=[[UITextField alloc] initWithFrame:CGRectMake(20, 80, SCREEN_SIZE.width-40, 30)];
    _loginText.borderStyle=UITextBorderStyleRoundedRect;
    _loginText.placeholder=@"请输入用户名";
    UIImageView *loginImage=[[UIImageView alloc]initWithFrame:CGRectMake(0,0, 20, 20)];
    loginImage.image=[UIImage imageNamed:@"ic_launcher"];
    _loginText.leftView=loginImage;
    _loginText.leftViewMode=UITextFieldViewModeAlways;
    
    
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
