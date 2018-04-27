//
//  MyUISegmentedControl.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUISegmentedControl.h"

@interface MyUISegmentedControl ()

@end

@implementation MyUISegmentedControl

- (void)viewDidLoad {
    [super viewDidLoad];
    /**=========================UISegmentedControl======================================================**/
    UISegmentedControl *seg=[[UISegmentedControl alloc]initWithItems:@[@"one",@"",@"three",@"four"]];
    seg.frame=CGRectMake(20, 310, 280, 30);
    [seg setImage:[[UIImage imageNamed:@"ic_launcher"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forSegmentAtIndex:1];
    [seg setContentOffset:CGSizeMake(10, 10) forSegmentAtIndex:0];
    seg.momentary=NO;
    [self.view addSubview:seg];
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
