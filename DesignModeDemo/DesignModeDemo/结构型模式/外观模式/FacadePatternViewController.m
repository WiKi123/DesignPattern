//
//  FacadePatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "FacadePatternViewController.h"
#import "CabDriver.h"

@interface FacadePatternViewController ()

@end

@implementation FacadePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [CabDriver driveToLocation:@"帝都"];

    
}



@end
