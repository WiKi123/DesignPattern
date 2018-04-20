//
//  ChairmanHandler.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ChairmanHandler.h"

@implementation ChairmanHandler

- (void)handlerOrder:(Order *)order {
    
    if (order.orderMoney < 100000.0f) {
        
        NSLog(@"订单小于10万，董事长审批订单通过");
        
    }else{
        NSLog(@"订单大于10万，需要开会讨论，等待下");
    }
}

@end
