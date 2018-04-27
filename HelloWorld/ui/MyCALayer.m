//
//  MyCALayer.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyCALayer.h"

@interface MyCALayer ()

@end

@implementation MyCALayer

- (void)viewDidLoad {
    [super viewDidLoad];
    /**=====================================================
     ***              CALayer
     ======================================================**/
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(20, 650, 280, 30);
    btn.backgroundColor=[UIColor redColor];
    [btn setTitle:@"跳转到登陆页" forState:UIControlStateNormal];
//    [btn addTarget:self action:@selector(go2LoginView) forControlEvents:UIControlEventTouchUpInside];
    //带圆角
    //    btn.layer.masksToBounds=YES;
    //    btn.layer.cornerRadius=10;
    //带边框
    //    btn.layer.borderColor=[UIColor greenColor].CGColor;
    //    btn.layer.borderWidth=5;
    //阴影
    btn.layer.shadowColor=[UIColor grayColor].CGColor;
    btn.layer.shadowOffset=CGSizeMake(15, 15);
    btn.layer.shadowOpacity=1;
    [self.view addSubview:btn];
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
