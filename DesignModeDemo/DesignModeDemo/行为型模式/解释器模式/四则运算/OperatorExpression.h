//
//  OperatorExpression.h
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ArithmeticExpression.h"
@interface OperatorExpression : NSObject<ArithmeticExpression>
{
    @protected
    id<ArithmeticExpression> _mArithmeticExpression1;
    id<ArithmeticExpression> _mArithmeticExpression2;
}

-(void)OperatorExpression:(id<ArithmeticExpression>)mArithmeticExpression1 :(id<ArithmeticExpression>)mArithmeticExpression2;
@end
