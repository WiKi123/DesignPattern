//
//  Invoker.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Invoker.h"

@interface Invoker ()
@property (nonatomic, strong) NSMutableArray *array;  // 存储操作的
@end

@implementation Invoker

+ (instancetype)sharedInstance
{
    static Invoker *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        sharedInstance = [[self alloc] init];
        sharedInstance.array = [NSMutableArray array];
        
    });
    return sharedInstance;
}

// 回退指令
- (void)goBack {
    // 1.获取数组中的最后一个操作
    id <CommandProtocol> command = self.array.lastObject;
    
    // 2.操作调用,撤销的步骤
    [command backExcute];
    
    // 3.删除最后操作
    [self.array removeLastObject];
}

// 添加操作指令
- (void)addAndExcute:(id <CommandProtocol>)command {
    // 1.把操作添加到数组
    [self.array addObject:command];
    
    // 2.让操作调用实现的协议方法
    [command excute];
}
@end
