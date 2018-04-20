//
//  ManagerHandler.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ManagerHandler.h"

@implementation ManagerHandler

- (void)handlerOrder:(Order *)order {
    
    if (order.orderMoney < 10000.0f) {
        
        NSLog(@"订单小于1万，经理审批订单直接通过");
    }else{
        
        NSLog(@"订单大于1万，需要董事长审批");
        [self.successor handlerOrder:order];
    }
}

@end
