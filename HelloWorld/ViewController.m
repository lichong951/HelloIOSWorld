//
//  ViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/23.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "ViewController.h"

int tip=0;
int conIndex=1;
@interface ViewController ()<UITextFieldDelegate>

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d viewDidLoad",++tip);
    self.view.backgroundColor=[UIColor whiteColor];
    self.title=[NSString stringWithFormat:@"第%d视图控制器",conIndex];
    conIndex++;
    
    [self addPushBtn:@"push"];
    
    [self addBtn:@"跳转到登陆页" X:20 Y:140 action:@selector(go2LoginView)];
    
    [self addBtn:@"Navigation" X:165 Y:140 action:@selector(go2NavigationBar)];
    [self addBtn:@"UITabBarController" X:20 Y:175 action:@selector(go2UITabBarController)];
    [self addBtn:@"UIScrollView" X:200 Y:175 action:@selector(go2UIScrollView)];
    
    [self addBtn:@"UIWebView" X:20 Y:210 action:@selector(go2UIWebView)];
    [self addBtn:@"UITableView" X:200 Y:210 action:@selector(go2UITableView)];
    
    [self addBtn:@"UICollectionView" X:20 Y:245 action:@selector(go2UICollectionView)];
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
    
    ViewController *con=[[ViewController alloc] init];
    con.title=[NSString stringWithFormat:@"第%d视图控制器",conIndex];
    [self.navigationController pushViewController:con animated:YES];
}
-(void)go2LoginView{
    LoginViewController * loginView=[[LoginViewController alloc]init];
    [self presentViewController:loginView animated:YES completion:nil];
}

-(void)go2NavigationBar{
//    MyNavigationBarController * loginView=[[MyNavigationBarController alloc]init];
//    [self presentViewController:loginView animated:YES completion:nil];
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

- (void)dealloc
{
    
    conIndex--;
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
