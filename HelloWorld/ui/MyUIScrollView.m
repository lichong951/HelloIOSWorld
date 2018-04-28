//
//  MyUIScrollView.m
//  HelloWorld
//
//  Created by lichong on 2018/4/28.
//  Copyright © 2018年 lichong. All rights reserved.
//

#import "MyUIScrollView.h"

@interface MyUIScrollView ()<UIScrollViewDelegate>

@end

@implementation MyUIScrollView

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor=[UIColor whiteColor];
    
    UIScrollView *scrollView=[[UIScrollView alloc] initWithFrame:self.view.frame];
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(40, 50, 240, 400)];
    imageView.image=[UIImage imageNamed:@"Fire"];
    [scrollView addSubview:imageView];
    scrollView.contentSize=CGSizeMake(self.view.frame.size.width*2, self.view.frame.size.height*2);
    scrollView.bounces=YES;
    scrollView.alwaysBounceHorizontal=YES;
    scrollView.alwaysBounceVertical=YES;
    scrollView.pagingEnabled=YES;
    scrollView.showsHorizontalScrollIndicator=YES;
    scrollView.showsVerticalScrollIndicator=YES;
    scrollView.indicatorStyle=UIScrollViewIndicatorStyleBlack;
    scrollView.scrollsToTop=YES;
    scrollView.delegate=self;
    
    scrollView.minimumZoomScale=0.5;
    scrollView.maximumZoomScale=2.0;
    scrollView.bouncesZoom=YES;
    
    [self.view addSubview:scrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView{
    NSLog(@"scrollViewShouldScrollToTop called!");
    return YES;
}
- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidScrollToTop called!");
}
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDragging called!");
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset{
    NSLog(@"scrollViewWillEndDragging called!");
}
- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewWillBeginDecelerating called!");
}
- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(UIView *)view{
    NSLog(@"scrollViewWillBeginZooming called!");
}
- (void)scrollViewDidZoom:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidZoom called!");
}
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    NSLog(@"scrollViewDidEndDragging called!");
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidEndDecelerating called!");
}
- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView{
    NSLog(@"scrollViewDidEndScrollingAnimation called!");
}
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
     NSLog(@"scrollViewDidScroll called!");
}
- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView{
    NSLog(@"viewForZoomingInScrollView called!");
    return scrollView.subviews.firstObject;
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
