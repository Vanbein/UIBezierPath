//
//  RectView.m
//  UIBezierPath
//
//  Created by 王斌 on 16/1/12.
//  Copyright © 2016年 Changhong electric Co., Ltd. All rights reserved.
//

#import "RectView.h"

@implementation RectView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

//下面举个例子,绘制矩形
- (void)drawRect:(CGRect)rect{

    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色

    UIBezierPath* aPath = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 100, 50)];

    aPath.lineWidth = 2.0;
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理

    [aPath stroke];
}

@end
