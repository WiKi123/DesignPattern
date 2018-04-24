//
//  ShipmentState.m
//  行为型设计模式-状态模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ShipmentState.h"

@implementation ShipmentState
-(void)choose{
    NSLog(@"不能选择物品");
}
-(void)buy{
    NSLog(@"不能买");
}
-(void)shipment{
    NSLog(@"出货");
}
@end
