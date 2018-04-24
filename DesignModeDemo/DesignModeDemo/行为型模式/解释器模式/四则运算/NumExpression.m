//
//  NumExpression.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "NumExpression.h"
@interface NumExpression()
@property (nonatomic,assign) int  num;
@end
@implementation NumExpression
- (instancetype)initWithNum:(int)num
{
    self = [super init];
    if (self) {
        self.num = num;
    }
    return self;
}
-(int)interptet{
    return self.num;
}

@end
