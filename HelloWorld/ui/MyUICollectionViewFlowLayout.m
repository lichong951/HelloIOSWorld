//
//  MyUICollectionViewFlowLayout.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUICollectionViewFlowLayout.h"

@interface MyUICollectionViewFlowLayout ()

@end

@implementation MyUICollectionViewFlowLayout
{
    NSMutableArray *_attributeArray;
}

- (void)prepareLayout{
    _attributeArray=[[NSMutableArray alloc]init];
    [super prepareLayout];
    //计算每个item的宽度
    float WIDTH=([UIScreen mainScreen].bounds.size.width-self.sectionInset.left-self.sectionInset.right-self.minimumInteritemSpacing)/2;
    
    CGFloat colHight[2]={self.sectionInset.top,self.sectionInset.top
    };
    for (int i=0;i<_itemCount; i++) {
        //设置每个item的位置等相关属性
        NSIndexPath *index=[NSIndexPath indexPathForItem:i inSection:0];
        //创建一个布局属性类，通过indexpath创建
        UICollectionViewLayoutAttributes *attris=[UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:index];
        //随机一个高度，在40-190之间
        CGFloat hight=arc4random()%150+40;
        //标记最短的列
        int width=0;
        if (colHight[0]<colHight[1]) {
            colHight[0]=colHight[0]+hight+self.minimumLineSpacing;
            width=0;
        }else{
            colHight[1]=colHight[1]+hight+self.minimumLineSpacing;
            width=1;
        }
        //设置item的位置
        attris.frame=CGRectMake(self.sectionInset.left+(self.minimumInteritemSpacing+WIDTH)*width, colHight[width]-hight-self.minimumLineSpacing, WIDTH, hight);
        [_attributeArray addObject:attris];
        
    }
    if (colHight[0]>colHight[1]) {
        self.itemSize=CGSizeMake(WIDTH, (colHight[0]-self.sectionInset.top)*2/_itemCount-self.minimumLineSpacing);
    }else{
        self.itemSize=CGSizeMake(WIDTH, (colHight[1]-self.sectionInset.top)*2/_itemCount-self.minimumLineSpacing);
    }
}

- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    return _attributeArray;
}







@end
