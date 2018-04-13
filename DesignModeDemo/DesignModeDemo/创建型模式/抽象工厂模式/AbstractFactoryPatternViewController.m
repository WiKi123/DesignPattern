//
//  AbstractFactoryPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "AbstractFactoryPatternViewController.h"
#import "CircleHeaderFactory.h"
#import "SquareHeaderFactory.h"

@interface AbstractFactoryPatternViewController ()

@end

@implementation AbstractFactoryPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /*
     抽象工厂
     1. 通过对象组合创建抽象产品
     2. 创建多个系列产品
     3. 必须修改父类的接口才能支持新的产品
     
     抽象工厂: 是对工厂抽象
     */
    
    UIView *imgV = [CircleHeaderFactory creatHeaderImgView];
    [self.view addSubview:imgV];
    
    
    UIView *img1 = [SquareHeaderFactory creatHeaderImgView];
    [self.view addSubview:img1];
}

@end
