//
//  MyUICollectionViewCustom.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUICollectionViewCustom.h"
@interface MyUICollectionViewCustom ()<UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@end
@implementation MyUICollectionViewCustom

- (void)viewDidLoad{
    [super viewDidLoad];
    MyUICollectionViewFlowLayout *layout=[[MyUICollectionViewFlowLayout alloc  ]init];
    layout.itemCount=20;
    UICollectionView *collectionView=[[UICollectionView alloc]initWithFrame:self.view.frame collectionViewLayout:layout];
    collectionView.backgroundColor=[UIColor whiteColor];
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:@"cellID"];
    collectionView.delegate=self;
    collectionView.dataSource=self;
    [self.view addSubview:collectionView];
}
- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView{
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return 20;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell=[collectionView dequeueReusableCellWithReuseIdentifier:@"cellID" forIndexPath:indexPath];
    cell.backgroundColor=[UIColor colorWithRed:arc4random()%255/255.0
                                         green:arc4random()%255/255.0
                                          blue:arc4random()%255/255.0
                                         alpha:1];
    return cell;
}

@end


