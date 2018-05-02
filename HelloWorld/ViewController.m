//
//  ViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/23.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "ViewController.h"

int tip=0;

@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d viewDidLoad",++tip);
    [self addBtn:@"跳转到登陆页" X:20 Y:140 action:@selector(go2LoginView)];
    
    [self addBtn:@"Navigation" X:165 Y:140 action:@selector(go2NavigationBar)];
    [self addBtn:@"UITabBarController" X:20 Y:175 action:@selector(go2UITabBarController)];
    [self addBtn:@"UIScrollView" X:200 Y:175 action:@selector(go2UIScrollView)];
    
    [self addBtn:@"UIWebView" X:20 Y:210 action:@selector(go2UIWebView)];
    [self addBtn:@"UITableView" X:200 Y:210 action:@selector(go2UITableView)];
    
    [self addBtn2:@"UICollectionView" X:20 Y:245 action:@selector(go2UICollectionView)];
    //#import "MainViewControllerForSaFari.h"
    //#import "MyUICollectionViewCustom.h"
    [self addBtn2:@"UICollectionViewCustom" X:20 Y:280 action:@selector(go2UICollectionViewCustom)];
     [self addBtn2:@"UICollectionViewCircleLayout" X:20 Y:315 action:@selector(go2UICollectionViewCircleLayout)];
    [self addBtn2:@"SaFari" X:20 Y:355 action:@selector(go2SaFari)];
   
    

}
-(void)go2SaFari{
    //1、先获取到ViewController所在的StoryBoard.
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"SaFari" bundle:[NSBundle mainBundle]];
    //2、在storyboard中根据storyBoardID来获取我们要的ViewController .
    //MainViewControllerForSaFari *vc = [story instantiateViewControllerWithIdentifier:@"test"];
    
    UINavigationController *vc = [story instantiateViewControllerWithIdentifier:@"navigation"];
    
    // 3、跳转到对应的ViewController
    [self presentViewController:vc animated:YES completion:nil];
//    MainViewControllerForSaFari *view=[[MainViewControllerForSaFari alloc] init];
//    [self presentViewController:view animated:YES completion:nil ];
}

-(void)go2UICollectionViewCircleLayout
{
    MyUICollectionViewCircleLayout *view=[[MyUICollectionViewCircleLayout alloc] init];
    [self presentViewController:view animated:YES completion:nil ];
}

-(void)go2UICollectionViewCustom{
    MyUICollectionViewCustom *view=[[MyUICollectionViewCustom alloc] init];
    [self presentViewController:view animated:YES completion:nil ];
}

-(void)go2UICollectionView{
    MyUICollectionView *view=[[MyUICollectionView alloc] init];
    [self presentViewController:view animated:YES completion:nil ];
}
-(void)go2UITableView{
    MyUITableViewViewController *view=[[MyUITableViewViewController alloc] init];
    [self presentViewController:view animated:YES completion:nil ];
}
-(void)go2UIWebView{
    MyUIWebView *view=[[MyUIWebView alloc] init];
    [self presentViewController:view animated:YES completion:nil ];
}
-(void)click{
    
}
-(void)addBtn2:(NSString *)text X:(CGFloat) x Y:(CGFloat) y action:(SEL)action{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(x, y, 300, 30);
    btn.backgroundColor=[UIColor redColor];
    [btn setTitle:text forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
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
-(void)addBtn:(NSString *)text X:(CGFloat) x Y:(CGFloat) y action:(SEL)action{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(x, y, 180, 30);
    btn.backgroundColor=[UIColor redColor];
    [btn setTitle:text forState:UIControlStateNormal];
    [btn addTarget:self action:action forControlEvents:UIControlEventTouchUpInside];
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




-(void)go2LoginView{
    LoginViewController * loginView=[[LoginViewController alloc]init];
    [self presentViewController:loginView animated:YES completion:nil];
}

-(void)go2NavigationBar{
    UIStoryboard *story = [UIStoryboard storyboardWithName:@"MyNavigation" bundle:[NSBundle mainBundle]];
    UINavigationController *vc = [story instantiateViewControllerWithIdentifier:@"navigation"];
    
    // 3、跳转到对应的ViewController
    [self presentViewController:vc animated:YES completion:nil];
}
-(void)go2UITabBarController{
    MyUITabBarController *view=[[MyUITabBarController alloc]init];
    [self presentViewController:view animated:YES completion:nil];
}
-(void)go2UIScrollView{
    MyUIScrollView *view=[[MyUIScrollView alloc]init];
    [self presentViewController:view animated:YES completion:nil];
}

- (void)viewWillLayoutSubviews{
    [super viewWillLayoutSubviews];
    NSLog(@"%d viewWillLayoutSubviews",++tip);
}
- (void)viewDidLayoutSubviews{
    [super viewDidLayoutSubviews];
    NSLog(@"%d viewDidLayoutSubviews",++tip);
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    NSLog(@"%d didReceiveMemoryWarning",++tip);
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated{
    //    [super viewWillAppear:<#animated#>];
    NSLog(@"%d viewWillAppear",++tip);
}

- (void)viewWillDisappear:(BOOL)animated{
    //    [super viewWillDisappear:<#animated#>];
    NSLog(@"%d viewWillDisappear",++tip);
    
}

- (void)viewDidDisappear:(BOOL)animated{
    //    [super viewDidDisappear:<#animated#>];
    NSLog(@"%d viewDidDisappear",++tip);
}


+ (void)initialize
{
    [super initialize];
    NSLog(@"%d initialize",++tip);
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    NSLog(@"%d init",++tip);
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
    }
    NSLog(@"%d initWithCoder",++tip);
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {
    NSLog(@"%d encodeWithCoder",++tip);
}

- (void)awakeFromNib{
    [super awakeFromNib];
    NSLog(@"%d awakeFromNib",++tip);
}
- (void)loadView{
    [super loadView];
    NSLog(@"%d loadView",++tip);
}

@end
