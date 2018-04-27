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
    //返回按钮
    self.view.backgroundColor=[UIColor whiteColor];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(20, 15, SCREEN_SIZE.width-40, 60)];
    label.font=[UIFont systemFontOfSize:23];
    label.text=@"登录界面";
//    label.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:label];
    UIButton *backBtn=[UIButton buttonWithType:UIButtonTypeSystem];
    backBtn.frame=CGRectMake(SCREEN_SIZE.width/2-50, 220, 100, 30);
    [backBtn setTitle:@"返回" forState:UIControlStateNormal];
    [backBtn addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
    
    
    _loginText=[[UITextField alloc] initWithFrame:CGRectMake(20, 80, SCREEN_SIZE.width-40, 30)];
    _loginText.borderStyle=UITextBorderStyleRoundedRect;
    _loginText.placeholder=@"请输入用户名";
    UIImageView *loginImage=[[UIImageView alloc]initWithFrame:CGRectMake(0,0, 20, 20)];
    loginImage.image=[UIImage imageNamed:@"ic_launcher"];
    _loginText.leftView=loginImage;
    _loginText.leftViewMode=UITextFieldViewModeAlways;
    
    __passwdText=[[UITextField alloc] initWithFrame:CGRectMake(20, 130, SCREEN_SIZE.width-40, 30)];
    __passwdText.borderStyle=UITextBorderStyleRoundedRect;
    __passwdText.placeholder=@"请输入密码";
    UIImageView *passwdImage=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
    passwdImage.image=[UIImage imageNamed:@"ic_launcher"];
    __passwdText.leftView=passwdImage;
    __passwdText.leftViewMode=UITextFieldViewModeAlways;
    [self.view addSubview:_loginText];
    [self.view addSubview:__passwdText];
    
    //创建登录按钮和注册按钮
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeSystem];
    btn.frame=CGRectMake(SCREEN_SIZE.width/4-50, 180, 100, 30  );
    [btn setTitle:@"登录" forState:UIControlStateNormal];
    btn.layer.masksToBounds=YES;
    btn.layer.cornerRadius=10;
    btn.backgroundColor=[UIColor cyanColor];
    [btn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *regBtn=[UIButton buttonWithType:UIButtonTypeSystem];
    regBtn.frame=CGRectMake(SCREEN_SIZE.width/4*3-50, 180, 100, 30);
    [regBtn setTitle:@"注册" forState:UIControlStateNormal];
    regBtn.layer.masksToBounds=YES;
    regBtn.layer.cornerRadius=10;
    regBtn.backgroundColor=[UIColor cyanColor];
    [regBtn addTarget:self action:@selector(regis) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    [self.view addSubview:regBtn];
    
    
}
-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)regis{
    RegisViewController *con=[[RegisViewController alloc]init];
    [self presentViewController:con animated:YES completion:nil];
}

-(void)login{
    if (_loginText.text.length==0) {
        UIAlertController *alertCon=[UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请输入用户名" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            
        }];
        [alertCon addAction:action];
        [self presentViewController:alertCon animated:YES completion:nil];
        return;
    }
    
    if (__passwdText.text.length==0) {
        UIAlertController *alertCon=[UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请输入密码" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            
        }];
        [alertCon addAction:action];
        [self presentViewController:alertCon animated:YES completion:nil];
        return;
    }
    UIAlertController *alertCon=[UIAlertController alertControllerWithTitle:@"温馨提示" message:@"登录成功" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
        
    }];
    [alertCon addAction:action];
    [self presentViewController:alertCon animated:YES completion:nil];
    
    
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
