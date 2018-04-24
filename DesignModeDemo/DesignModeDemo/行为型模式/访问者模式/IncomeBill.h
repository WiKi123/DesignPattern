//
//  IncomeBill.h
//  行为型设计模式-访问者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bill.h"
@interface IncomeBill : NSObject<Bill>
@property (nonatomic,assign) double amount;
@property (nonatomic,strong) NSString *item;
- (instancetype)initWithItem:(NSString *)item Amount:(double)amount;
@end
