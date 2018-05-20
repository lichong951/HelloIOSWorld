//
//  MainViewControllerForSaFari.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MainViewControllerForSaFari.h"

@interface MainViewControllerForSaFari ()<UIWebViewDelegate,UIGestureRecognizerDelegate>

@end

@implementation MainViewControllerForSaFari
{
    UIWebView * webView;
    UITextField * searchBar;
    BOOL isUp;
    UILabel *titleLable;
    UISwipeGestureRecognizer * _upSwipe;
    UISwipeGestureRecognizer * _downSwipe;
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
    webView=[[UIWebView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64)];
    webView.scrollView.bounces=NO;
    webView.delegate=self;
    isUp=NO;
    
    titleLable=[[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-40 ,20 )];
    titleLable.backgroundColor=[UIColor clearColor];
    titleLable.font=[UIFont systemFontOfSize:14];
    titleLable.textAlignment=NSTextAlignmentCenter;
    
    //
    NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"http://www.baidu.com"]];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
    [self.view addSubview:webView];
    [self creatSearchBar];
    
    [self createToolBar];
    
    [self createGesture];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)creatSearchBar{
    searchBar=[[UITextField alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width-40, 30)];
    searchBar.borderStyle=UITextBorderStyleRoundedRect;
    UIButton *goBtn=[UIButton buttonWithType:UIButtonTypeSystem];
    [goBtn addTarget:self action:@selector(goWeb) forControlEvents:UIControlEventTouchUpInside];
    goBtn.frame=CGRectMake(0, 0, 30, 30);
    [goBtn setTitle:@"GO" forState:UIControlStateNormal];
    searchBar.rightView=goBtn;
    searchBar.rightViewMode=UITextFieldViewModeAlways;
    searchBar.placeholder=@"请输入网址";
    self.navigationItem.titleView=searchBar;
}
-(void)goWeb{
    if (searchBar.text.length>0) {
        NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"http://%@",searchBar.text]];
        NSURLRequest *request=[NSURLRequest requestWithURL:url];
        [webView loadRequest:request];
    }else{
        UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"温馨提示" message:@"输入的网址不能为空" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action=[UIAlertAction actionWithTitle:@"好的" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
        
    }
}
-(void)createGesture{
    _upSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(upSwipe:)];
    _upSwipe.delegate=self;
    _upSwipe.direction=UISwipeGestureRecognizerDirectionUp;
    [webView addGestureRecognizer:_upSwipe];
    
    _downSwipe=[[UISwipeGestureRecognizer alloc]initWithTarget:self action:@selector(downSwipe:)];
    _downSwipe.delegate=self;
    _downSwipe.direction=UISwipeGestureRecognizerDirectionDown;
    [webView addGestureRecognizer:_downSwipe];
    
}
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(nonnull UIGestureRecognizer *)otherGestureRecognizer:(UIPress *)press{
    if (gestureRecognizer==_upSwipe ||gestureRecognizer==_downSwipe) {
        return YES;
    }
    return NO;
}

-(void)upSwipe{
    if (isUp) {
        return;
    }
    
    self.navigationItem.titleView=nil;
    webView.frame=CGRectMake(0, 40, self.view.frame.size.width, self.view.frame.size.height-40);
    [UIView animateWithDuration:0.3 animations:^{self.navigationController.navigationBar.frame=CGRectMake(0, 0, self.navigationController.navigationBar.frame.size.width, 40);
        [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:7 forBarMetrics:UIBarMetricsDefault];
        
    }completion:^(BOOL finished){
        self.navigationItem.titleView=titleLable;
    }];
    [self.navigationController setToolbarHidden:YES animated:YES];
    isUp=YES;
    
}
-(void)downSwipe{
    if (webView.scrollView.contentOffset.y==0&&isUp) {
        self.navigationItem.titleView=nil;
         webView.frame=CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height-64);
        [UIView animateWithDuration:0.3 animations:^{self.navigationController.navigationBar.frame=CGRectMake(0, 0, self.navigationController.navigationBar.frame.size.width, 64);
            [self.navigationController.navigationBar setTitleVerticalPositionAdjustment:0 forBarMetrics:UIBarMetricsDefault];
            
        }completion:^(BOOL finished){
            self.navigationItem.titleView=searchBar;
        }];
        [self.navigationController setToolbarHidden:NO  animated:YES];
        isUp=NO;
    }
}


-(void)createToolBar{
    self.navigationController.toolbarHidden=NO;
    UIBarButtonItem *itemHistory=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCompose target:self action:@selector(goHistory)];
     UIBarButtonItem *itemLike=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemBookmarks target:self action:@selector(goLike)];
    
    UIBarButtonItem *itemBack=[[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(goBack)];
    UIBarButtonItem *itemForward=[[UIBarButtonItem alloc]initWithTitle:@"forward" style:UIBarButtonItemStylePlain target:self action:@selector(goForward)];
    
     UIBarButtonItem *emptyItem=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
     UIBarButtonItem *emptyItem2=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
     UIBarButtonItem *emptyItem3=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    self.toolbarItems=@[itemHistory,emptyItem,itemLike,emptyItem2,itemBack,emptyItem3,itemForward];
    
}
-(void)goHistory{
    HistoryTableViewController *controller=[[HistoryTableViewController alloc]init];
    [self.navigationController pushViewController:controller animated:YES];
}
-(void)goLike{
    NSLog(@"goLike called!");
    UIAlertController *alert=[UIAlertController alertControllerWithTitle:@"温馨提示" message:@"请选择您要进行的操作" preferredStyle:UIAlertControllerStyleActionSheet];
    UIAlertAction *action=[UIAlertAction actionWithTitle:@"添加收藏" style:UIAlertActionStyleDefault handler:^(UIAlertAction *_Nonnull action){
        NSArray *array=[[NSUserDefaults standardUserDefaults]valueForKey:@"Like"];
        if (!array) {
            array=[[NSArray alloc]init];
        }
        NSMutableArray *newArray=[[NSMutableArray alloc]init];
        [newArray addObject:webView.request.URL.absoluteString];
        [[NSUserDefaults standardUserDefaults]setValue:newArray forKey:@"Like"];
        [[NSUserDefaults standardUserDefaults]synchronize];
    }];
    UIAlertAction *action2=[UIAlertAction actionWithTitle:@"查看收藏夹" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action){
        LikeTableViewController *controller=[[LikeTableViewController alloc]init];
        [self.navigationController pushViewController:controller animated:YES];
    }];
    UIAlertAction *action3=[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alert addAction:action];
    [alert addAction:action2];
    [alert addAction:action3];
    [self presentViewController:alert animated:YES completion:nil];
    
    
}
-(void)goBack{
    if ([webView canGoBack]) {
        [webView goBack];
    }
}
-(void)goForward{
    if ([webView canGoForward]) {
        [webView goForward];
    }
}
-(void)loadURL:(NSString *)urlStr{
    NSURL *url=[NSURL URLWithString:[NSString stringWithFormat:@"%@",urlStr]];
    NSURLRequest *request=[NSURLRequest requestWithURL:url];
    [webView loadRequest:request];
}

-(void)webViewDidFinishLoad:(UIWebView *)webView{
    titleLable.text=webView.request.URL.absoluteString;
    NSArray *array=[[NSUserDefaults standardUserDefaults] valueForKey:@"History"];
    if (!array) {
        array=[[NSArray alloc ]init];
        
    }
    NSMutableArray *newArray=[[NSMutableArray alloc]initWithArray:array];
    [newArray addObject:titleLable.text];
    [[NSUserDefaults standardUserDefaults]setValue:newArray forKey:@"History"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    
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
