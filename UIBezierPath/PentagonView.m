//
//  PentagonView.m
//  UIBezierPath
//
//  Created by 王斌 on 16/1/12.
//  Copyright © 2016年 Changhong electric Co., Ltd. All rights reserved.
//

#import "PentagonView.h"

@implementation PentagonView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect
{
    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色
    //
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 2.0;
    //
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理
    //
    // Set the starting point of the shape.
    [aPath moveToPoint:CGPointMake(100.0, 20.0)]; //顶点
    //
    // Draw the lines
    [aPath addLineToPoint:CGPointMake(180.0, 80.0)];
    [aPath addLineToPoint:CGPointMake(150, 160)];
    [aPath addLineToPoint:CGPointMake(60.0, 160)];
    [aPath addLineToPoint:CGPointMake(20.0, 80.0)];
    [aPath closePath];//第五条线通过调用closePath方法得到的
    //
    [aPath stroke];//Draws line 根据坐标点连线
//    [aPath fill]; //填充
}

@end
