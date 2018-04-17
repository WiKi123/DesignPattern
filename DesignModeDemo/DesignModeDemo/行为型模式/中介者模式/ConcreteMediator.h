//
//  ConcreteMediator.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Mediator.h"
#import "ConcreteColleague.h"

@interface ConcreteMediator : Mediator

@property (nonatomic, strong) ConcreteColleague *colleagueA;
@property (nonatomic, strong) ConcreteColleague *colleagueB;

// 查看信息
- (NSDictionary *)values;

@end
