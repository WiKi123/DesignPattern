//
//  OperatorExpression.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "OperatorExpression.h"

@interface OperatorExpression()

@end

@implementation OperatorExpression
-(void)OperatorExpression:(id<ArithmeticExpression>)mArithmeticExpression1 :(id<ArithmeticExpression>)mArithmeticExpression2{
    _mArithmeticExpression1 = mArithmeticExpression1;
    _mArithmeticExpression2 = mArithmeticExpression2;
}



@end
