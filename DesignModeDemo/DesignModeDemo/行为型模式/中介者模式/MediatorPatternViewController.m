//
//  MediatorPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "MediatorPatternViewController.h"
#import "ConcreteMediator.h"
#import "ConcreteColleague.h"

@interface MediatorPatternViewController ()

@end

@implementation MediatorPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //中介报价
    ConcreteMediator *mediator = [ConcreteMediator new];
    
    //卖房者A
    ConcreteColleague *colleagueA = [ConcreteColleague new];
    mediator.colleagueA = colleagueA;
    colleagueA.delegate = mediator;
    [colleagueA chooseRoomSizeChanged:80];

    
    //卖房者B
    ConcreteColleague *colleagueB = [ConcreteColleague new];
    mediator.colleagueB = colleagueB;
    colleagueB.delegate = mediator;
    [colleagueB chooseRoomSizeChanged:120];
    
    NSLog(@"所有卖房者去公摊后的实际面积：%@", [mediator values]);
    
}


@end
