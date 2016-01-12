//
//  QuadCurveView.m
//  UIBezierPath
//
//  Created by 王斌 on 16/1/12.
//  Copyright © 2016年 Changhong electric Co., Ltd. All rights reserved.
//

#import "QuadCurveView.h"

@implementation QuadCurveView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (void)drawRect:(CGRect)rect
{
    UIColor *color = [UIColor orangeColor];
    [color set]; //设置线条颜色
    
    //二阶
    UIBezierPath* aPath = [UIBezierPath bezierPath];
    aPath.lineWidth = 2.0;
    aPath.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath.lineJoinStyle = kCGLineCapRound; //终点处理
    [aPath moveToPoint:CGPointMake(20, 100)]; //起点
    [aPath addQuadCurveToPoint:CGPointMake(120, 100) controlPoint:CGPointMake(70, 0)];
    [aPath stroke];

    //三阶
    UIBezierPath* aPath_3 = [UIBezierPath bezierPath];
    aPath_3.lineWidth = 2.0;
    aPath_3.lineCapStyle = kCGLineCapRound; //线条拐角
    aPath_3.lineJoinStyle = kCGLineCapRound; //终点处理
    [aPath_3 moveToPoint:CGPointMake(20, 200)]; //起点
    [aPath_3 addCurveToPoint:CGPointMake(180, 150) controlPoint1:CGPointMake(50, 120) controlPoint2:CGPointMake(140, 220)];
    [aPath_3 stroke];
}

@end
