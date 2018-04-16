//
//  AdapterDemo2ViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "AdapterDemo2ViewController.h"
#import "ColorView.h"
#import "ModelOne.h"
#import "ModelTwo.h"
#import "ModelOneAdapter.h"
#import "ModelTwoAdapter.h"

@interface AdapterDemo2ViewController ()

@end

@implementation AdapterDemo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ColorView *colorView = [[ColorView alloc] init];
    
    ModelOne *model = [[ModelOne alloc] init];
    model.userName = @"张三";
    model.age = @"18";
    
    
    ModelTwo *modle2 = [[ModelTwo alloc] init];
    modle2.firstName = @"四";
    modle2.lastName = @"李";
    modle2.age = 23;
    
    ModelOneAdapter *oneAdapter = [[ModelOneAdapter alloc] initWithModel:model];
    [colorView loadModel:oneAdapter];
    
    ModelTwoAdapter *twoAdapter = [[ModelTwoAdapter alloc] initWithModel:modle2];
    [colorView loadModel:twoAdapter];
    
}



@end
