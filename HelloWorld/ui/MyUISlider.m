//
//  MyUISlider.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUISlider.h"

@interface MyUISlider ()

@end

@implementation MyUISlider

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**=========================UISlider
     
     ======================================================**/
    
    UISlider *slider=[[UISlider alloc]initWithFrame:CGRectMake(20, 350, 280, 30)];
    slider.continuous=YES;
    slider.minimumValue=0;
    slider.maximumValue=10;
    slider.minimumTrackTintColor=[UIColor redColor];
    slider.maximumTrackTintColor=[UIColor greenColor];
    slider.thumbTintColor=[UIColor blueColor];
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    
    slider.minimumValueImage=[UIImage imageNamed:@"ic_launcher"];
    slider.maximumValueImage=[UIImage imageNamed:@"ic_launcher"];
    [slider setThumbImage:[UIImage imageNamed:@"ic_launcher"] forState:UIControlStateNormal];
    
    [self.view addSubview: slider];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)changeValue:(UISlider *)slider{
    NSLog(@"%f",slider.value);
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
