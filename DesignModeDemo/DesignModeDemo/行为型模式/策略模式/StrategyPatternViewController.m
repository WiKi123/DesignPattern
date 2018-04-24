//
//  StrategyPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "StrategyPatternViewController.h"
#import "Context.h"
#import "OperationAdd.h"
#import "OperationMultiply.h"
#import "OperationSubStract.h"

@interface StrategyPatternViewController ()

@end

@implementation StrategyPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Context * context = [[Context alloc]init];
    context.strategy = [OperationAdd new];
    [context calulate];
    context.strategy = [OperationMultiply new];
    [context calulate];
    context.strategy = [OperationSubStract new];
    [context calulate];
}


@end
