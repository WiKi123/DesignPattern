//
//  Calculator.m
//  行为型设计模式-解释器模式
//
//  Created by 温杰 on 2018/4/10.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import "Calculator.h"
@interface Calculator()
@property (nonatomic,strong) NSMutableArray *mArithmeticExpressionStack;
@end

@implementation Calculator

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.mArithmeticExpressionStack = [NSMutableArray new];
    }
    return self;
}

-(void)calculator:(NSString *)expression{
    id<ArithmeticExpression> one;
    id <ArithmeticExpression> two;
    
    while (1) {
        if ([expression hasPrefix:@"+"]) {
            one = [self.mArithmeticExpressionStack lastObject];
            [self.mArithmeticExpressionStack removeLastObject];
            expression =  [expression substringFromIndex:1];
            int b =[expression intValue];
            expression = [self getExpression:expression];
            two = [[NumExpression alloc]initWithNum:b];
            AdditionExpression * add= [AdditionExpression new];
            [ add OperatorExpression:one :two];
            [self.mArithmeticExpressionStack addObject:add];
            if (expression.length==0) {
                break;
            }
        }else if ([expression hasPrefix:@"-"]){
            one = [self.mArithmeticExpressionStack lastObject];
            [self.mArithmeticExpressionStack removeLastObject];
            expression =  [expression substringFromIndex:1];
            int b =[expression intValue];
            expression = [self getExpression:expression];
            two = [[NumExpression alloc]initWithNum:b];
            ReduceExpression * add= [ReduceExpression new];
            [ add OperatorExpression:one :two];
            [self.mArithmeticExpressionStack addObject:add];
            if (expression.length==0) {
                break;
            }
        }
        else{
            int a=[expression intValue];
            NumExpression * num = [[NumExpression alloc]initWithNum:a];
            [self.mArithmeticExpressionStack addObject:num];
            expression = [self getExpression:expression];
            if (expression.length==0) {
                break;
            }
        }
    }
}


-(NSString *)getExpression:(NSString *)expression{
    int a=[expression intValue];
    NSString * str =[NSString stringWithFormat:@"%d",a];
    return [expression substringFromIndex:str.length];
}

-(int)calculator{
   id<ArithmeticExpression> object= [self.mArithmeticExpressionStack lastObject];
    [self.mArithmeticExpressionStack removeLastObject];
    return [object interptet];
}



@end
