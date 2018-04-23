//
//  MementoPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "MementoPatternViewController.h"
#import "MementoCenter.h"
#import "Apple.h"
#import "NSObject+MementoCenter.h"

@interface MementoPatternViewController ()

@end

@implementation MementoPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    Apple *apple = [[Apple alloc] init];
    apple.name = @"富士苹果";
    apple.age = @(10);
 
    
    //方法一：
    
    // 存
    [MementoCenter saveMementoObject:apple withKey:@"Apple"];
    
    // 取
    [apple recoverFromState:[MementoCenter mementoObjectWithKey:@"Apple"]];
    
    NSLog(@"name: %@  age:%@", apple.name, apple.age);

    //方法二：（优化）
    
    [apple saveStateWithKey:@"Apples"];
    [apple recoverFromStateWithKey:@"Apples"];

    NSLog(@"name: %@  age:%@", apple.name, apple.age);
    
}

@end
