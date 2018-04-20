//
//  ChainOfResponsibilityPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ChainOfResponsibilityPatternViewController.h"
#import "Order.h"
#import "GroupLeaderHandler.h"
#import "ManagerHandler.h"
#import "ChairmanHandler.h"

@interface ChainOfResponsibilityPatternViewController ()

@end

@implementation ChainOfResponsibilityPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Handler *handler1 = [[GroupLeaderHandler alloc] init];
    Handler *handler2 = [[ManagerHandler alloc] init];
    Handler *handler3 = [[ChairmanHandler alloc] init];
    
    handler1.successor = handler2;
    handler2.successor = handler3;
    
    Order *order = [[Order alloc] init];
    order.orderMoney = 500;
    [handler1 handlerOrder:order];
    NSLog(@"###############################\n");
    
    order.orderMoney = 3000;
    [handler1 handlerOrder:order];
    NSLog(@"###############################\n");

    
    order.orderMoney = 20000;
    [handler1 handlerOrder:order];
    NSLog(@"###############################\n");

    order.orderMoney = 500000;
    [handler1 handlerOrder:order];
    
}


@end
