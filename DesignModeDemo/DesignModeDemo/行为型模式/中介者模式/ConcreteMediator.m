//
//  ConcreteMediator.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ConcreteMediator.h"

@implementation ConcreteMediator

// 主要用来查看打印信息.
- (NSDictionary *)values {
    return @{@"A":@(self.colleagueA.roomSize),
             @"B":@(self.colleagueB.roomSize),
             };
}

#pragma mark -ColleagueDelegate

-  (void)colleagueChoose:(Colleague *)event {
    
    if ([event isEqual:self.colleagueA]) {
        
        self.colleagueA.roomSize = self.colleagueA.roomSize * 0.9f;
        
    }else{
        
        self.colleagueB.roomSize = self.colleagueB.roomSize * 0.85;
    }
}

@end
