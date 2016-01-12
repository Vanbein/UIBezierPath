//
//  ViewController.m
//  UIBezierPath
//
//  Created by 王斌 on 16/1/12.
//  Copyright © 2016年 Changhong electric Co., Ltd. All rights reserved.
//

#define DEGREES_TO_RADIANS(degrees)  ((M_PI * degrees)/ 180)

#import "ViewController.h"
#import "CustomView.h"
#import "PentagonView.h"
#import "RectView.h"
#import "QuadCurveView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    CustomView *customView = [[CustomView alloc]initWithFrame:CGRectMake(0, 0, 320, self.view.frame.size.height)];
//    [self.view addSubview:customView];
    
    //1. 五边形
    PentagonView *pentagon = [[PentagonView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    [self.view addSubview:pentagon];

    //2. 矩形
    RectView *rect = [[RectView alloc] initWithFrame:CGRectMake(0, 210, 200, 100)];
    [self.view addSubview:rect];
    
    //3. 贝塞尔曲线
    QuadCurveView *quad = [[QuadCurveView alloc] initWithFrame:CGRectMake(0, 320, 200, 300)];
    [self.view addSubview:quad];
    
//    [aPath_3 moveToPoint:CGPointMake(20, 200)]; //起点
//    [aPath_3 addCurveToPoint:CGPointMake(180, 150) controlPoint1:CGPointMake(50, 120) controlPoint2:CGPointMake(140, 220)];

    //4. 贝塞尔曲线和动画路径
    UIView *view8 = [[UIView alloc]initWithFrame:CGRectMake(20, 320 + 200 + 10, 10, 10)];
    [view8 setBackgroundColor:[UIColor purpleColor]];
    view8.layer.cornerRadius = 5;
    //创建路径
    UIBezierPath *movePath = [UIBezierPath bezierPath];
    [movePath moveToPoint:CGPointMake(20, 320 + 200 + 10)];
    //    [movePath addQuadCurveToPoint:CGPointMake(200, 200) controlPoint:CGPointMake(300, 350)];
    [movePath addCurveToPoint:CGPointMake(180, 320 + 200 + 10 - 50) controlPoint1:CGPointMake(50, 320 + 120 + 10) controlPoint2:CGPointMake(140, 320 + 220 + 10)];
    CGPathRef cgPath = movePath.CGPath;
    CGMutablePathRef path = CGPathCreateMutableCopy(cgPath);
    //添加动画
    [view8.layer addAnimation:[self animationKeyframeWithPath:path duration:2.0 repeatTimes:MAXFLOAT] forKey:nil];
    [self.view addSubview:view8];

//    [self drawRect];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CAKeyframeAnimation *)animationKeyframeWithPath:(CGMutablePathRef)path duration:(float)duration repeatTimes:(float)repeatTimes{
    CAKeyframeAnimation *animation=[CAKeyframeAnimation animationWithKeyPath:@"position"];
    animation.path = path;
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    animation.autoreverses = NO;
    animation.duration = duration;
    animation.repeatCount = repeatTimes;
    return animation;
}



@end
