//
//  IncomeBill.m
//  行为型设计模式-访问者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "IncomeBill.h"

@implementation IncomeBill
- (instancetype)initWithItem:(NSString *)item Amount:(double)amount
{
    self = [super init];
    if (self) {
        self.item = item;
        self.amount =amount;
    }
    return self;
}

-(void)accept:(id<AccountBookViewer>)viewer{
    [viewer lookIncomBill:self];
}
@end
