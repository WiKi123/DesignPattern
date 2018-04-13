//
//  FactoryPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "FactoryPatternViewController.h"
#import "PenFactory.h"
#import "Pencil.h"
#import "BallpointPen.h"

@interface FactoryPatternViewController ()

@end

@implementation FactoryPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /*
     工厂方法
     1.通过类继承创建抽象产品
     2.创建一种产品
     3.子类化创建并重写工厂方法来创建新产品
     
     工厂方法: 多个产品抽象
     */
    
    //
    Pen *pen = [PenFactory penFactory:PenTypePencil];
    [pen ifHeavy];
    [pen ifExpensive];
    
    //
    [(Pencil *)pen useFeeling];
    
    //
    BallpointPen *ballPen = (BallpointPen *)[PenFactory penFactory:PenTypeBallpointPen];
    [ballPen lookLikeFeeling];
    
}


@end
