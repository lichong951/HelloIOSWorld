//
//  ViewController.m
//  UIView
//
//  Created by lichong on 2018/4/26.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UISearchBarDelegate,UIAlertViewDelegate,UIActionSheetDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /**=====================================================
     ***              UISearchBar
     ======================================================**/
    UISearchBar *searchBar=[[UISearchBar alloc] initWithFrame:CGRectMake(20, 100, 280, 30)];
    searchBar.tintColor=[UIColor redColor];
    searchBar.placeholder=@"请输入搜索内容";
    searchBar.showsScopeBar=YES;
    searchBar.showsBookmarkButton=YES;
    searchBar.showsCancelButton=YES;
    [searchBar setScopeButtonTitles:@[@"one",@"two",@"three"]];
    [self.view addSubview:searchBar];
    
    searchBar.delegate=self;
    /**=====================================================
     ***              UIDatePicker
     ======================================================**/
    UIDatePicker *datePicker=[[UIDatePicker alloc]initWithFrame:CGRectMake(20, 200, 280, 150)];
    datePicker.datePickerMode=UIDatePickerModeTime;
    [datePicker addTarget:self action:@selector(change:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:datePicker];
    
}
-(void)change:(UIDatePicker *)picker{
    NSLog(@"%@",picker.date);
}
/**=====================================================
 ***              UIActionSheet
 ======================================================**/
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    UIActionSheet *actionSheet =[[UIActionSheet alloc]initWithTitle:@"标题" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"删除" otherButtonTitles:@"确定", nil];
    [actionSheet showInView:self.view];
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex{
    NSLog(@"click");
}

/**=====================================================
 ***              UIAlertView
 ======================================================**/
//- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"标题" message:@"内容" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
//    [alert show];
//}
//
//- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
//    NSLog(@"click");
//}

//单击 切换 扩展 栏 上 的 按钮 时 触发 的 方法

- (void)searchBar:(UISearchBar *)searchBar selectedScopeButtonIndexDidChange:(NSInteger)selectedScope{
    NSLog(@"selectedScopeButtonIndexDidChange called!");
}
- (BOOL)searchBar:(UISearchBar *)searchBar shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
    NSLog(@"shouldChangeTextInRange called! %@",text);
    return YES;
}

- (void)searchBar:(UISearchBar *)searchBar textDidChange:(NSString *)searchText{
     NSLog(@"textDidChange called! %@",searchText);
}
- (void)searchBarBookmarkButtonClicked:(UISearchBar *)searchBar{
    NSLog(@"searchBarBookmarkButtonClicked called! ");
}
- (void)searchBarCancelButtonClicked:(UISearchBar *)searchBar{
    NSLog(@"searchBarCancelButtonClicked called! ");
}
- (void)searchBarResultsListButtonClicked:(UISearchBar *)searchBar{
     NSLog(@"searchBarResultsListButtonClicked called! ");
}
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    NSLog(@"searchBarSearchButtonClicked called! ");
}

- (BOOL)searchBarShouldBeginEditing:(UISearchBar *)searchBar{
    NSLog(@"searchBarShouldBeginEditing called! ");
    return  YES;
}
- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar{
    NSLog(@"searchBarShouldEndEditing called! ");
    return  YES;
}
- (void)searchBarTextDidBeginEditing:(UISearchBar *)searchBar{
     NSLog(@"searchBarTextDidBeginEditing called! ");
}

- (void)searchBarTextDidEndEditing:(UISearchBar *)searchBar{
    NSLog(@"searchBarTextDidEndEditing called! ");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
