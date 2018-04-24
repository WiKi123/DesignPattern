//
//  Context.h
//  行为型设计模式-策略模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"
@interface Context : NSObject
@property (nonatomic,strong) id<Strategy> strategy;
-(void)calulate;
@end
