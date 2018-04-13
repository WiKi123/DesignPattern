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
