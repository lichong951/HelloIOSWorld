//
//  HistoryTableViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "HistoryTableViewController.h"

@interface HistoryTableViewController ()

@end

@implementation HistoryTableViewController
{
    NSArray *_dataArray;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _dataArray =[[NSUserDefaults standardUserDefaults]valueForKey:@"History"];
    UIBarButtonItem *item=[[UIBarButtonItem alloc]initWithTitle:@"DeleteAll" style:UIBarButtonItemStylePlain target:self action:@selector(deleteAll)];
    self.navigationItem.rightBarButtonItem=item;
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.toolbarHidden=YES;
}
- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    self.navigationController.toolbarHidden=NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)deleteAll{
    [[NSUserDefaults standardUserDefaults]setValue:[[NSArray alloc]init] forKey:@"History"];
    [[NSUserDefaults standardUserDefaults]synchronize];
    _dataArray=@[];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataArray.count;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellID"];
    }
    
    cell.textLabel.text=_dataArray[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [(MainViewControllerForSaFari *)self.navigationController.viewControllers.firstObject loadURL:_dataArray[indexPath.row]];
    [self.navigationController popViewControllerAnimated:YES];
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
