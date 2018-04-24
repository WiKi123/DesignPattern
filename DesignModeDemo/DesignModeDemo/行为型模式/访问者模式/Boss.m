//
//  Boss.m
//  行为型设计模式-访问者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Boss.h"
#import "IncomeBill.h"
#import "ConsumeBill.h"

@implementation Boss
-(void)lookIncomBill:(IncomeBill *)incomeBill{
    self.totalIncome += incomeBill.amount;
}

-(void)lookConsumeBill:(ConsumeBill *)consumeBill{
    self.totalConsume = consumeBill.amount;
    
}

@end
