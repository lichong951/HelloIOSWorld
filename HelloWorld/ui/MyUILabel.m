//
//  MyUILabel.m
//  HelloWorld
//
//  Created by lichong on 2018/4/27.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUILabel.h"

@interface MyUILabel ()

@end

@implementation MyUILabel

- (void)viewDidLoad {
    [super viewDidLoad];
     /**=========================UILabel======================================================**/
    UILabel *lable=[[UILabel alloc]initWithFrame:CGRectMake(20, 100,280 , 30)];
    lable.text=@"Hello World 16:45 2018 04 21 16:45 2018 04 21 ";
    lable.numberOfLines=0;
    //    lable.lineBreakMode=NSLineBreakByWordWrapping;
    lable.lineBreakMode=NSLineBreakByTruncatingMiddle;
    lable.backgroundColor=[UIColor redColor];
    lable.font=[UIFont systemFontOfSize:20];
    
    lable.textColor=[UIColor whiteColor];
    
    lable.textAlignment=NSTextAlignmentCenter;
    
    //    lable.shadowColor=[UIColor greenColor];
    //    lable.shadowOffset=CGSizeMake(10, 10);
    
    [self.view addSubview:lable];
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
