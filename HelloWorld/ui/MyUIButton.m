//
//  MyUIButton.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIButton.h"

@interface MyUIButton ()

@end

@implementation MyUIButton

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    /**=========================UIButton======================================================**/
    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    button.frame=CGRectMake(40, 140, 240, 30);
    button.backgroundColor=[UIColor redColor];
    
    [button setTitle:@"点我一下" forState:UIControlStateNormal];
    [button addTarget:self  action:@selector(changeColor) forControlEvents:UIControlEventTouchUpInside];
    //    [button setBackgroundImage:[UIImage imageNamed:@"Fire"] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:@"ic_launcher"] forState:UIControlStateNormal];
    //     button.imageEdgeInsets = UIEdgeInsetsMake(- (button.frame.size.height - button.titleLabel.frame.size.height- button.titleLabel.frame.origin.y),(button.frame.size.width -button.titleLabel.frame.size.width)/2.0f -button.imageView.frame.size.width, 0, 0);
    [self.view addSubview:button];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)changeColor{
    self.view.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0
                                              green:arc4random()%255/255.0
                                               blue:arc4random()%255/255.0
                                              alpha:1];
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
