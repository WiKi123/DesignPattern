//
//  GroupLeaderHandler.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "GroupLeaderHandler.h"

@implementation GroupLeaderHandler

- (void)handlerOrder:(Order *)order {
    
    if (order.orderMoney < 2000.0f) {
        
        NSLog(@"订单小于2000，组长审批订单直接通过");
    }else{
        
        NSLog(@"订单大于2000，需要经理审批");
        [self.successor handlerOrder:order];

    }
}

@end
