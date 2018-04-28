//
//  MyUITabBarController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/28.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUITabBarController.h"

@interface MyUITabBarController ()

@end

@implementation MyUITabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UITabBarController *tabBar=[[UITabBarController alloc]init];
    tabBar.tabBar.barTintColor=[UIColor greenColor];
    tabBar.tabBar.tintColor=[UIColor purpleColor];
    
    NSMutableArray *array=[[NSMutableArray alloc]init];
    for (int i=0; i<10; i++) {
        UIViewController *con=[[UIViewController alloc]init];
//        con.tabBarItem=[[UITabBarItem alloc]initWithTabBarSystemItem:UITabBarSystemItemHistory tag:i];
//        con.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"title" image:[UIImage imageNamed:@"ic_launcher"] selectedImage:[UIImage imageNamed:@"Fire"]];
        con.tabBarItem=[[UITabBarItem alloc]initWithTitle:@"title" image:[UIImage imageNamed:@"ic_launcher"] tag:i];
        
        
        con.view.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0
                                                 green:arc4random()%255/255.0
                                                  blue:arc4random()%255/255.0
                                                 alpha:1];
//        con.tabBarItem.title=[NSString stringWithFormat:@"%d视图",i];
//        con.tabBarItem.image=[UIImage imageNamed:@"ic_launcher"];
//        con.tabBarItem.selectedImage=[UIImage imageNamed:@"ic_launcher"];
        [array addObject:con];
    }
    tabBar.viewControllers=array;
    [self presentViewController:tabBar animated:YES completion:nil];
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
