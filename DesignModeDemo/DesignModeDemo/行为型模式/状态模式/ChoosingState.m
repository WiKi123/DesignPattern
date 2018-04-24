//
//  ChoosingState.m
//  行为型设计模式-状态模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "ChoosingState.h"

@implementation ChoosingState
-(void)choose{
    NSLog(@"选择物品");
}
-(void)buy{
    NSLog(@"不能买");
}
-(void)shipment{
    NSLog(@"不能出货");
}
@end
