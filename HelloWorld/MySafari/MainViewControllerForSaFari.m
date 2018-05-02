//
//  MainViewControllerForSaFari.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MainViewControllerForSaFari.h"

@interface MainViewControllerForSaFari ()

@end
int conIndex1=1;
@implementation MainViewControllerForSaFari

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor redColor];
    self.title=[NSString stringWithFormat:@"第%d视图控制器",conIndex1];
    conIndex1++;
    self.navigationController.navigationBar.barTintColor=[UIColor purpleColor];
//    MainViewControllerForSaFari *vc = [[UIStoryboard storyboardWithName:@"MyNavigation" bundle:nil] instantiateInitialViewController];
//    // 3、跳转到对应的ViewController
//    [self presentViewController:vc animated:YES completion:nil];
    
//    //1、先获取到ViewController所在的StoryBoard.
//    UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
//    //2、在storyboard中根据storyBoardID来获取我们要的ViewController .
//    MainViewControllerForSaFari *vc = [story instantiateViewControllerWithIdentifier:@"test"];
//    // 3、跳转到对应的ViewController
//    [self presentViewController:vc animated:YES completion:nil];
    
    
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
