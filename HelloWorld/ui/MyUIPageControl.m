//
//  MyUIPageControl.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIPageControl.h"

@interface MyUIPageControl ()

@end

@implementation MyUIPageControl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**=========================UIPageControl======================================================**/
    self.view.backgroundColor=[UIColor blackColor];
    UIPageControl *page=[[UIPageControl alloc]initWithFrame:CGRectMake(20, 270, 280, 30)];
    page.currentPageIndicatorTintColor=[UIColor redColor];
    [page addTarget:self action:@selector(changeNum:) forControlEvents:UIControlEventValueChanged];
    page.numberOfPages=8;
    [self.view addSubview:page];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)changeNum:(UIPageControl *)page{
    NSLog(@"%lu",page.currentPage);
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
