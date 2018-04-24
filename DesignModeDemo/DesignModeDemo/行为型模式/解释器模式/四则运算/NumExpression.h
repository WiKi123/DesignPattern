//
//  NumExpression.h
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArithmeticExpression.h"
@interface NumExpression : NSObject<ArithmeticExpression>
- (instancetype)initWithNum:(int)num;
@end
