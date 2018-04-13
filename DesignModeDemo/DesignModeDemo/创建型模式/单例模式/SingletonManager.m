//
//  SingletonManager.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "SingletonManager.h"

static SingletonManager *manager = nil;

@implementation SingletonManager

+ (instancetype)shareManager {
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[SingletonManager alloc] initSingletonManager];
    });
    return manager;
}


- (instancetype)initSingletonManager {
    self = [super init];
    if (self) {
    }
    return self;
}


- (instancetype)init{
    self = [super init];
    if (self) {
        NSLog(@"请使用单例SingletonManager初始化");
        assert(NO);
    }
    return self;
}

- (void)makeSureIsSingleton {
    
    NSLog(@"Current method --------- %@",NSStringFromSelector(_cmd));
}

@end
