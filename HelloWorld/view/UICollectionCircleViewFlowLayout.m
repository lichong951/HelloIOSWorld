//
//  UICollectionCircleViewFlowLayout.m
//  HelloWorld
//
//  Created by lichong on 2018/5/2.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "UICollectionCircleViewFlowLayout.h"

@implementation UICollectionCircleViewFlowLayout
{
    NSMutableArray * _attributeArray;
}

-(void)prepareLayout{
    [super prepareLayout];
    _itemCount=(int)[self.collectionView numberOfItemsInSection:0];
    _attributeArray=[[NSMutableArray alloc]init];
    
    CGFloat radius=MIN(self.collectionView.frame.size.width, self.collectionView.frame.size.height)/2;
    
    CGPoint center=CGPointMake(self.collectionView.frame.size.width/2, self.collectionView.frame.size.height/2);
    
    for (int i=0; i<_itemCount; i++) {
        UICollectionViewLayoutAttributes *attris=[UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:[NSIndexPath indexPathForItem:i inSection:0]];
        attris.size=CGSizeMake(50, 50);
        
        float x=center.x+cosf(2*M_PI/_itemCount*i)*(radius-25);
        float y=center.y+sinf(2*M_PI/_itemCount*i)*(radius-25);
        attris.center=CGPointMake(x, y);
        [_attributeArray addObject:attris];
    }
    
}

- (CGSize)collectionViewContentSize{
    return self.collectionView.frame.size;
}
- (NSArray<UICollectionViewLayoutAttributes *> *)layoutAttributesForElementsInRect:(CGRect)rect{
    return _attributeArray;
}


@end
