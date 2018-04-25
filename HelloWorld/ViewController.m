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
- (void)awakeFromNib{
    [super awakeFromNib];
    NSLog(@"%d awakeFromNib",++tip);
}
- (void)loadView{
    [super loadView];
    NSLog(@"%d loadView",++tip);
}


- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"%d viewDidLoad",++tip);
    // Do any additional setup after loading the view, typically from a nib.
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
    
    /**=========================UITextField======================================================**/
    UITextField *textField=[[UITextField alloc] initWithFrame:CGRectMake(20, 180, 280, 30)];
    textField.borderStyle=UITextBorderStyleRoundedRect;
    textField.placeholder=@"请输入文字";
    textField.textColor=[UIColor redColor];
    textField.font=[UIFont systemFontOfSize:14];
    textField.textAlignment=NSTextAlignmentCenter;
    UIImage *imageView=[[UIImageView alloc]initWithImage:[UIImage imageNamed:@"ic_launcher"]];
    textField.leftView=imageView;
    textField.leftViewMode=UITextFieldViewModeAlways;
    textField.delegate=self;
    [self.view addSubview:textField];
    
    /**=========================UISwitch======================================================**/
    UISwitch *swi=[[UISwitch alloc]initWithFrame:CGRectMake(100, 220, 100, 40)];
    swi.onTintColor=[UIColor greenColor];
    swi.tintColor=[UIColor redColor];
    swi.thumbTintColor=[UIColor orangeColor];
    [swi addTarget:self action:@selector(changeBackgroundColor:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:swi];
    
}

-(void) changeBackgroundColor:(UISwitch *)swi{
    if (swi.isOn) {
        self.view.backgroundColor=[UIColor redColor];
        
    }else{
        self.view.backgroundColor=[UIColor whiteColor];
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    if(string.length>0){
        if ([string characterAtIndex:0]<'0'||[string characterAtIndex:0]>'9') {
            NSLog(@"请输入数字");
            return NO;
        }
        if (textField.text.length+string.length>11) {
            NSLog(@"超过11位啦！");
            return NO;
        }
        
    }
    return YES;
}

-(void)changeColor{
    self.view.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0
                                              green:arc4random()%255/255.0
                                               blue:arc4random()%255/255.0
                                              alpha:1];
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
}
@end
