//
//  ViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/23.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "ViewController.h"
int tip=0;
@interface ViewController ()<UITextFieldDelegate,UIPickerViewDelegate,UIPickerViewDataSource>

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
    /**=========================UIPageControl======================================================**/
    self.view.backgroundColor=[UIColor blackColor];
    UIPageControl *page=[[UIPageControl alloc]initWithFrame:CGRectMake(20, 270, 280, 30)];
    page.currentPageIndicatorTintColor=[UIColor redColor];
    [page addTarget:self action:@selector(changeNum:) forControlEvents:UIControlEventValueChanged];
    page.numberOfPages=8;
    [self.view addSubview:page];
    /**=========================UISegmentedControl======================================================**/
    UISegmentedControl *seg=[[UISegmentedControl alloc]initWithItems:@[@"one",@"",@"three",@"four"]];
    seg.frame=CGRectMake(20, 310, 280, 30);
    [seg setImage:[[UIImage imageNamed:@"ic_launcher"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forSegmentAtIndex:1];
    [seg setContentOffset:CGSizeMake(10, 10) forSegmentAtIndex:0];
    seg.momentary=NO;
    [self.view addSubview:seg];
    
    /**=========================UISlider
     
     ======================================================**/
    
    UISlider *slider=[[UISlider alloc]initWithFrame:CGRectMake(20, 350, 280, 30)];
    slider.continuous=YES;
    slider.minimumValue=0;
    slider.maximumValue=10;
    slider.minimumTrackTintColor=[UIColor redColor];
    slider.maximumTrackTintColor=[UIColor greenColor];
    slider.thumbTintColor=[UIColor blueColor];
    [slider addTarget:self action:@selector(changeValue:) forControlEvents:UIControlEventValueChanged];
    
    slider.minimumValueImage=[UIImage imageNamed:@"ic_launcher"];
    slider.maximumValueImage=[UIImage imageNamed:@"ic_launcher"];
    [slider setThumbImage:[UIImage imageNamed:@"ic_launcher"] forState:UIControlStateNormal];
    
    [self.view addSubview: slider];
    
    /**=========================UIActivityindicatorView
     
     ======================================================**/
    UIActivityIndicatorView *indicator=[[UIActivityIndicatorView alloc]
                                        initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleGray
                                        ];
    indicator.center=CGPointMake(self.view.frame.size.width/2, self.view.frame.size.height/2);
    indicator.color=[UIColor whiteColor];
    
    [self.view addSubview:indicator];
    [indicator startAnimating];
    /**=========================UIProgressView
     
     ======================================================**/
    UIProgressView *progressView=[[UIProgressView alloc]
                                  initWithFrame:CGRectMake(20, 400, 280, 30 )];
    progressView.progressTintColor=[UIColor redColor];
    progressView.trackTintColor=[UIColor blueColor];
    [self.view addSubview:progressView];
    progressView.progress=0.5;
    
    /**=========================UIStepper
     
     ======================================================**/
    UIStepper *stepper=[[UIStepper alloc]init];
    stepper.center=CGPointMake(50,450);
    stepper.continuous=YES;
    stepper.autorepeat=YES;
    stepper.wraps=YES;
    stepper.minimumValue=1;
    stepper.maximumValue=10;
    stepper.stepValue=1;
    stepper.tintColor=[UIColor redColor];
    //    [stepper setDecrementImage:[[UIImage imageNamed:@"ic_launcher"]
    //                                imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    //                      forState:UIControlStateNormal];
    [stepper setIncrementImage:[[UIImage imageNamed:@"ic_launcher"]
                                imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal
                                ] forState:UIControlStateNormal];
    [self.view addSubview:stepper];
    [stepper addTarget:self action:@selector(click:) forControlEvents:UIControlEventValueChanged];
    
    /**=====================================================
     ***              UIPickerView
     ======================================================**/
    UIPickerView *picker=[[UIPickerView alloc] initWithFrame:
                          CGRectMake(20, 500, 280, 150)];
    picker.delegate=self;
    picker.dataSource=self;
    [self.view addSubview:picker];
    /**=====================================================
     ***              CALayer
     ======================================================**/
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(100, 650, 100, 100);
    btn.backgroundColor=[UIColor redColor];
    //带圆角
//    btn.layer.masksToBounds=YES;
//    btn.layer.cornerRadius=10;
    //带边框
//    btn.layer.borderColor=[UIColor greenColor].CGColor;
//    btn.layer.borderWidth=5;
    //阴影
    btn.layer.shadowColor=[UIColor grayColor].CGColor;
    btn.layer.shadowOffset=CGSizeMake(15, 15);
    btn.layer.shadowOpacity=1;
    [self.view addSubview:btn];
    
    
}
/**=====================================================
 ***              UIAlertController
 ======================================================**/
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //警告框
//    UIAlertController *alertView=[UIAlertController alertControllerWithTitle:@"标题" message:@"警告的内容" preferredStyle:UIAlertControllerStyleAlert];
//    UIAlertAction *action=[UIAlertAction actionWithTitle:@"按钮" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
//        NSLog(@"click");
//    }];
//
//    UIAlertAction *action2=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action){
//        NSLog(@"取消");
//    }];
//    [alertView addAction:action];
//    [alertView addAction:action2];
//    [alertView addTextFieldWithConfigurationHandler:^(UITextField *_Nonnull textField){
//        textField.placeholder=@"place";
//    }];
//
//    [self presentViewController:alertView animated:YES completion:nil];
    //活动列表框
        UIAlertController *alertView=[UIAlertController alertControllerWithTitle:@"标题" message:@"警告的内容" preferredStyle:UIAlertControllerStyleActionSheet];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"one" style:UIAlertActionStyleDestructive handler:^(UIAlertAction *_Nonnull action){
            NSLog(@"one");
        }];
    
        UIAlertAction *action2=[UIAlertAction actionWithTitle:@"two" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
            NSLog(@"two");
        }];
    UIAlertAction *action3=[UIAlertAction actionWithTitle:@"three" style:UIAlertActionStyleCancel handler:^(UIAlertAction *_Nonnull action){
        NSLog(@"three");
    }];
        [alertView addAction:action];
        [alertView addAction:action2];
    [alertView addAction:action3];
    
        [self presentViewController:alertView animated:YES completion:nil];
    
}

-(void)click:(UIStepper *) stepper{
    NSLog(@"%f",stepper.value);
}
-(void)changeValue:(UISlider *)slider{
    NSLog(@"%f",slider.value);
}
-(void)changeNum:(UIPageControl *)page{
    NSLog(@"%lu",page.currentPage);
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
- (NSInteger)numberOfComponentsInPickerView:(nonnull UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(nonnull UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 10;
}

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [NSString stringWithFormat:@"%lu分区%lu数据",component,row];
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component{
    return 44;

}
- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component{
    return 140;
}
- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component{
    NSLog(@"%lu,%lu",row,component);
}
@end
