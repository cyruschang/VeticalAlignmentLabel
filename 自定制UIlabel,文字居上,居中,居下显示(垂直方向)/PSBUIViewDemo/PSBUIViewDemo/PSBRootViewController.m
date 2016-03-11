//
//  PSBRootViewController.m
//  PSBUIViewDemo
//
//  Created by 潘松彪 on 15/3/10.
//  Copyright (c) 2015年 PSB. All rights reserved.
//

#import "PSBRootViewController.h"
#import "LYLabel.h"

/**
 自定制的UILabel可以通过旋转实现如同角标打分的效果
 */
@interface PSBRootViewController ()

@end

@implementation PSBRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIView * view = [[UIView alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor yellowColor];
    
    //设置tag值
    view.tag = 19;
    
    [self.view addSubview:view];
    [view release];
    
    [self propertyMethod];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 关于坐标系的相关属性和方法
- (void)propertyMethod
{
    UIView * view = [self.view viewWithTag:19];
    
    //设置坐标，frame.origin是左上角坐标，frame.size是视图的大小
    view.frame = CGRectMake(20, 20, 50, 50);
    //修改边界
    view.bounds = CGRectMake(0, 0, 100, 100);
    //前两个值待会再说，后两个值就是宽和高
    //修改中心点坐标
    view.center = CGPointMake(160, 240);
    //center和bounds是好基友
    //因为修改bounds是以中点不变作为参照的。
    view.bounds = CGRectMake(0, 0, 200, 200);
    
    
//    UILabel * label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 200, 40)];
//    label.backgroundColor = [UIColor greenColor];
//    label.text = @"伟大领袖金正恩同志万岁";
    LYLabel *star = [[LYLabel alloc] initWithFrame:CGRectMake(160, 0, 40, 40)];
    star.center = CGPointMake(200, 0);
    star.backgroundColor = [UIColor redColor];
    star.textColor = [UIColor whiteColor];
    star.text = @"9.6";
    star.font = [UIFont boldSystemFontOfSize:10];
    star.transform = CGAffineTransformMakeRotation(M_PI_4);
    [star setVerticalAlignment:VerticalAlignmentBottom];
    star.textAlignment = NSTextAlignmentCenter;
    
    view.clipsToBounds = YES;
    [view addSubview:star];
    
    //变形之旋转(顺时针)
    //label.transform = CGAffineTransformMakeRotation(M_PI_4);
    //参数是弧度
    
    //label.transform = CGAffineTransformMakeRotation(0);
    //变形之压缩拉伸
    //label.transform = CGAffineTransformMakeScale(-1, 1);
    //参数是百分比
    
//    label.transform = CGAffineTransformMakeScale(0.8, 1);
    //这种情况，变形不会累积
    LYLabel *label = [[LYLabel alloc] initWithFrame:CGRectMake(30, 30, 100, 100)];
    label.backgroundColor = [UIColor purpleColor];
    label.text = @"毛泽东";
    label.textAlignment = NSTextAlignmentCenter;
    [label setVerticalAlignment:VerticalAlignmentBottom];
    [view addSubview:label];
    
    
    //在上一次变形的前提下压缩拉伸
    //label.transform = CGAffineTransformScale(label.transform, 0.5, 1);
    
    //在上一次变形的前提下旋转
    //label.transform = CGAffineTransformRotate(label.transform, M_PI);
    
    
    [star release];
}

@end










