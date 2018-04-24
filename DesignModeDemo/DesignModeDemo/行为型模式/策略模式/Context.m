//
//  Context.m
//  行为型设计模式-策略模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Context.h"

@implementation Context
-(void)calulate{
    NSLog(@" 第一个数10 第二个数5 计算结果 %d", [self.strategy doOperation:10 and:5]);
   
}
@end
