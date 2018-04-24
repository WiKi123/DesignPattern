//
//  BuyState.m
//  行为型设计模式-状态模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "BuyState.h"

@implementation BuyState
-(void)choose{
    NSLog(@"不能选择");
}
-(void)buy{
    NSLog(@"投币");
}
-(void)shipment{
    NSLog(@"不能出货");
}
@end
