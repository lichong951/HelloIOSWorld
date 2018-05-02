//
//  MyNavigationBarController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/28.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyNavigationBarController.h"
int conIndex=1;
@interface MyNavigationBarController ()

@end

@implementation MyNavigationBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=[NSString stringWithFormat:@"第%d视图控制器",conIndex];
    conIndex++;
    
     [self addPushBtn:@"push"];
    
    /**=====================================================
     ***              navigationBar
     ======================================================**/
    //    self.navigationController.navigationBar.barTintColor=[UIColor purpleColor];
    //    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"ic_launcher"] forBarMetrics:UIBarMetricsDefault];
    //    UIBarButtonItem *btnItem1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(click)];
    //
    //     UIBarButtonItem *btnItem2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(click)];
    //    self.navigationItem.rightBarButtonItems=@[btnItem1,btnItem2];
    //       UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(click)];
    // UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(click)];
    //UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(click)];
    //    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemEdit target:self action:@selector(click)];
    //    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:self action:@selector(click)];
    
    //    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemStop target:self action:@selector(click)];
    
    //UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:self action:@selector(click)];
    
    //    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemTrash target:self action:@selector(click)];
    
    //    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(click)];
    
    //UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemUndo target:self action:@selector(click)];
    //    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemRedo target:self action:@selector(click)];
    
    UIBarButtonItem *item1=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemPlay target:self action:@selector(click)];
    UIBarButtonItem *item2=[[UIBarButtonItem alloc]initWithCustomView:[[UIView alloc]init]];
    UIBarButtonItem *item3=[[UIBarButtonItem alloc]initWithImage:[UIImage imageNamed:@"ic_launcher"] style:UIBarButtonItemStylePlain target:self action:@selector(click)];
    
    UIBarButtonItem *item4=[[UIBarButtonItem alloc]initWithTitle:@"标题" style:UIBarButtonItemStylePlain target:self action:@selector(click)];
    
    //    self.navigationItem.rightBarButtonItems=@[item1,item2,item3,item4];
    
    /**=====================================================
     ***              UINavigationBar
     
     张益珲. iOS开发实战：从入门到上架App Store(第2版) (Kindle位置2235). 清华大学出版社. Kindle 版本.
     ======================================================**/
    self.navigationController.toolbarHidden=NO;
    self.navigationController.toolbar.barTintColor=[UIColor redColor];
    
    self.toolbarItems=@[item1,item2,item3,item4];
    self.navigationController.hidesBarsWhenVerticallyCompact=YES;
    self.navigationController.hidesBarsOnTap=YES;
    self.navigationController.hidesBarsWhenKeyboardAppears=YES;
    self.navigationController.hidesBarsOnSwipe=YES;
}
- (void)dealloc
{
    
    conIndex--;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)addPushBtn:(NSString *)text{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(20, 100, 140, 30);
    btn.backgroundColor=[UIColor blueColor];
    [btn setTitle:text forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    //带圆角
    btn.layer.masksToBounds=YES;
    btn.layer.cornerRadius=10;
    //带边框
    //    btn.layer.borderColor=[UIColor greenColor].CGColor;
    //    btn.layer.borderWidth=5;
    //    //阴影
    //    btn.layer.shadowColor=[UIColor grayColor].CGColor;
    //    btn.layer.shadowOffset=CGSizeMake(15, 15);
    //    btn.layer.shadowOpacity=1;
    [self.view addSubview:btn];
}

-(void)push{
    
    MyNavigationBarController *con=[[MyNavigationBarController alloc] init];
    con.title=[NSString stringWithFormat:@"第%d视图控制器",conIndex];
    [self.navigationController pushViewController:con animated:YES];
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
