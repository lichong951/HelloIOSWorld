//
//  MyUICollectionViewCircleLayout.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUICollectionViewCircleLayout.h"

@interface MyUICollectionViewCircleLayout ()<UICollectionViewDelegate,UICollectionViewDataSource>

@end

@implementation MyUICollectionViewCircleLayout

- (void)viewDidLoad {
    [super viewDidLoad];
    //#import "UICollectionCircleViewFlowLayout.h"
    UICollectionCircleViewFlowLayout * layout=[[UICollectionCircleViewFlowLayout alloc]init];
    UICollectionView * collect=[[UICollectionView alloc]initWithFrame:CGRectMake(0, 0, 320, 400) collectionViewLayout:layout];
    collect.delegate=self;
    collect.dataSource=self;
    [collect registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellID"];
    [self.view addSubview:collect];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 10;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    cell.layer.masksToBounds=YES;
    cell.layer.cornerRadius=25;
    cell.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0
                                         green:arc4random()%255/255.0
                                          blue:arc4random()%255/255.0
                                         alpha:1];
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
