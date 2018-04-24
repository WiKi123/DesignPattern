//
//  CAP.m
//  行为型设计模式-访问者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "CAP.h"
#import "IncomeBill.h"
#import "ConsumeBill.h"
@implementation CAP
-(void)lookIncomBill:(IncomeBill *)incomeBill{
    NSLog(@"是否交税了");
}

-(void)lookConsumeBill:(ConsumeBill *)consumeBill{
    if ([consumeBill.item isEqualToString:@"工资"]) {
        NSLog(@"是否交个人所得税");
    }
}
@end
