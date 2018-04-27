//
//  MyUIStepper.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIStepper.h"

@interface MyUIStepper ()

@end

@implementation MyUIStepper

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    /**=========================UIStepper
     
     ======================================================**/
    UIStepper *stepper=[[UIStepper alloc]init];
    stepper.center=CGPointMake(50,450);
    stepper.continuous=YES;
    stepper.autorepeat=YES;
    stepper.wraps=YES;
    stepper.minimumValue=1;
    stepper.maximumValue=10;
    stepper.stepValue=1;
    stepper.tintColor=[UIColor redColor];
    //    [stepper setDecrementImage:[[UIImage imageNamed:@"ic_launcher"]
    //                                imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    //                      forState:UIControlStateNormal];
    [stepper setIncrementImage:[[UIImage imageNamed:@"ic_launcher"]
                                imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal
                                ] forState:UIControlStateNormal];
    [self.view addSubview:stepper];
    [stepper addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
}

-(void)click:(UIStepper *) stepper{
    NSLog(@"%f",stepper.value);
}

@end
