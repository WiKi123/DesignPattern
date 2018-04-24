//
//  InterpreterPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "InterpreterPatternViewController.h"
#import "Calculator.h"

@interface InterpreterPatternViewController ()

@end

@implementation InterpreterPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Calculator * calculator = [Calculator new];
    [calculator calculator:@"125+175+100-100"];
    int result= [calculator calculator];
    NSLog(@"result %d",result);
}


@end
