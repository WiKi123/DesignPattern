//
//  MementoCenter.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

- (void)saveStateWithKey:(NSString *)key {
    id <MementoProtocol> obj = (id <MementoProtocol>)self;
    
    if ([obj respondsToSelector:@selector(currentState)]) {
        [MementoCenter saveMementoObject:obj withKey:key];
    }
}

- (void)recoverFromStateWithKey:(NSString *)key {
    id state = [MementoCenter mementoObjectWithKey:key];
    
    id <MementoProtocol> obj = (id <MementoProtocol>)self;
    
    if ([obj respondsToSelector:@selector(recoverFromStateWithKey:)]) {
        [obj recoverFromState:state];
    }
}

@end
