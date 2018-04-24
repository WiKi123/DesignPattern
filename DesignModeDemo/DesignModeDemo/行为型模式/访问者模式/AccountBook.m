//
//  AccountBook.m
//  行为型设计模式-访问者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "AccountBook.h"
@interface AccountBook()
@property (nonatomic,strong) NSMutableArray *billList;
@end
@implementation AccountBook

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.billList = [NSMutableArray new];
    }
    return self;
}
-(void)addBill:(id<Bill>)bill{
    [self.billList addObject:bill];
}
-(void)show:(id<AccountBookViewer>)view{
    for (id<Bill>bill in self.billList) {
        [bill accept:view];
    }
}


@end
