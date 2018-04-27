//
//  MyUIAlertController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIAlertController.h"

@interface MyUIAlertController ()

@end

@implementation MyUIAlertController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    /**=====================================================
     ***              UIAlertController
     ======================================================**/
    //警告框
    //    UIAlertController *alertView=[UIAlertController alertControllerWithTitle:@"标题" message:@"警告的内容" preferredStyle:UIAlertControllerStyleAlert];
    //    UIAlertAction *action=[UIAlertAction actionWithTitle:@"按钮" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
    //        NSLog(@"click");
    //    }];
    //
    //    UIAlertAction *action2=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action){
    //        NSLog(@"取消");
    //    }];
    //    [alertView addAction:action];
    //    [alertView addAction:action2];
    //    [alertView addTextFieldWithConfigurationHandler:^(UITextField *_Nonnull textField){
    //        textField.placeholder=@"place";
    //    }];
    //
    //    [self presentViewController:alertView animated:YES completion:nil];
    //活动列表框
    UIAlertController *alertView=[UIAlertController alertControllerWithTitle:@"标题" message:@"警告的内容" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"one" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *_Nonnull action){
        NSLog(@"one");
    }];
    
    UIAlertAction *action2=[UIAlertAction actionWithTitle:@"two" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
        NSLog(@"two");
    }];
    UIAlertAction *action3=[UIAlertAction actionWithTitle:@"three" style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action){
        NSLog(@"three");
    }];
    [alertView addAction:action];
    [alertView addAction:action2];
    [alertView addAction:action3];
    
    [self presentViewController:alertView animated:YES completion:nil];
    
}


@end
