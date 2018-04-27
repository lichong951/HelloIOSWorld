//
//  MyUIActivityindicatorView.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIActivityindicatorView.h"

@interface MyUIActivityindicatorView ()

@end

@implementation MyUIActivityindicatorView

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**=========================UIActivityindicatorView
     
     ======================================================**/
    UIActivityIndicatorView *indicator=[[UIActivityIndicatorView alloc]
                                        initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray
                                        ];
    indicator.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    indicator.color=[UIColor whiteColor];
    
    [self.view addSubview:indicator];
    [indicator startAnimating];
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
