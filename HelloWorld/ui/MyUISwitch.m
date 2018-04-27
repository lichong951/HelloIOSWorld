//
//  MyUISwitch.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUISwitch.h"

@interface MyUISwitch ()

@end

@implementation MyUISwitch

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**=========================UISwitch======================================================**/
    UISwitch *swi=[[UISwitch alloc]initWithFrame:CGRectMake(100, 220, 100, 40)];
    swi.onTintColor=[UIColor greenColor];
    swi.tintColor=[UIColor redColor];
    swi.thumbTintColor=[UIColor orangeColor];
    [swi addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:swi];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) changeBackgroundColor:(UISwitch *)swi{
    if (swi.isOn) {
        self.view.backgroundColor=[UIColor redColor];
        
    }else{
        self.view.backgroundColor=[UIColor whiteColor];
    }
}
@end
