//
//  MyUIDatePicker.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIDatePicker.h"

@interface MyUIDatePicker ()

@end

@implementation MyUIDatePicker

- (void)viewDidLoad {
    [super viewDidLoad];
    /**=====================================================
     ***              UIDatePicker
     ======================================================**/
    UIDatePicker *datePicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(20, 200, 280, 150)];
    datePicker.datePickerMode=UIDatePickerModeTime;
    [datePicker addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)change:(UIDatePicker *)picker{
    NSLog(@"%@",picker.date);
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
