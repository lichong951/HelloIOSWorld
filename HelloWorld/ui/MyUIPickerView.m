//
//  MyUIPickerView.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIPickerView.h"

@interface MyUIPickerView ()<UIPickerViewDelegate,UIPickerViewDataSource>

@end

@implementation MyUIPickerView

- (void)viewDidLoad {
    [super viewDidLoad];
    /**=====================================================
     ***              UIPickerView
     ======================================================**/
    UIPickerView *picker=[[UIPickerView alloc] initWithFrame:
                          CGRectMake(20, 500, 280, 150)];
    picker.delegate=self;
    picker.dataSource=self;
    [self.view addSubview:picker];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 10;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [NSString stringWithFormat:@"%lu分区%lu数据",component,row];
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 44;
    
}
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    return 140;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"%lu,%lu",row,component);
}

@end
