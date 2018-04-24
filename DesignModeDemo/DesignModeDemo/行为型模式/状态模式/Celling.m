//
//  Celling.m
//  行为型设计模式-状态模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Celling.h"
#import "ShipmentState.h"
#import "BuyState.h"
#import "ChoosingState.h"
@implementation Celling
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.state = [ShipmentState new];
    }
    return self;
}
-(void)choose{
    [self.state choose];
}
-(void)buy{
    [self.state buy];
}
-(void)shipment{
    [self.state shipment];
}
@end
