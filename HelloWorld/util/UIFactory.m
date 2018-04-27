//
//  ViewsFactory.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//
#import "UIFactory.h"
#define SCREEN_SIZE [UIScreen mainScreen].bounds.size
@interface UIFactory()

@end

@implementation UIFactory
-(void) addTitleLabel:(UIViewController *)viewController{
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(20, 15, SCREEN_SIZE.width-40, 60)];
    label.font=[UIFont systemFontOfSize:23];
    label.text=@"登录界面";
    
    [viewController.view addSubview:label];
}

@end


