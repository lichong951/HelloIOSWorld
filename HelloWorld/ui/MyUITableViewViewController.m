//
//  MyUITableViewViewController.m
//  HelloWorld
//
//  Created by lichong on 2018/4/29.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUITableViewViewController.h"

@interface MyUITableViewViewController ()<UITableViewDelegate,UITableViewDataSource>

@end

@implementation MyUITableViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UITableView *tableView= [[UITableView alloc]initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    tableView.delegate=self;
    tableView.dataSource=self;
    [self.view addSubview:tableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==0) {
        return 3;
    }else{
        return 10;
    }
    
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
//    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cellID"];
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:@"cellID"];
    if (cell==nil) {
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cellID"];
    }
    
    cell.textLabel.text=[NSString stringWithFormat:@"第%ld分区 第%ld行",indexPath.section,indexPath.row];
    cell.detailTextLabel.text=[NSString stringWithFormat:@"第%ld分区",indexPath.section];
    cell.imageView.image=[UIImage imageNamed:@"ic_launcher"];
    cell.backgroundColor=[UIColor purpleColor];
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    
    
    return cell;
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
