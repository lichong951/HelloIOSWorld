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
    
    [self addBtn:@"跳转到登陆页"];
    
    
}
-(void)addPushBtn:(NSString *)text{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(165, 100, 140, 30);
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


-(void)addBtn:(NSString *)text{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(20, 100, 140, 30);
    btn.backgroundColor=[UIColor redColor];
    [btn setTitle:text forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(go2LoginView) forControlEvents:UIControlEventTouchUpInside];
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

- (void)dealloc
{
    NSLog(@"%d dealloc",++tip);
    conIndex--;
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
