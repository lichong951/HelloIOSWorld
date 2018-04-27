//
//  MyUITextField.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUITextField.h"

@interface MyUITextField ()<UITextFieldDelegate>

@end

@implementation MyUITextField

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**=========================UITextField======================================================**/
    UITextField *textField=[[UITextField alloc] initWithFrame:CGRectMake(20, 180, 280, 30)];
    textField.borderStyle=UITextBorderStyleRoundedRect;
    textField.placeholder=@"请输入文字";
    textField.textColor=[UIColor redColor];
    textField.font=[UIFont systemFontOfSize:14];
    textField.textAlignment=NSTextAlignmentCenter;
    UIImage *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"ic_launcher"]];
    textField.leftView = imageView;
    textField.leftViewMode=UITextFieldViewModeAlways;
    textField.delegate=self;
    [self.view addSubview:textField];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if(string.length>0){
        if ([string characterAtIndex:0]<'0'||[string characterAtIndex:0]>'9') {
            NSLog(@"请输入数字");
            return NO;
        }
        if (textField.text.length+string.length>11) {
            NSLog(@"超过11位啦！");
            return NO;
        }
        
    }
    return YES;
}

@end
