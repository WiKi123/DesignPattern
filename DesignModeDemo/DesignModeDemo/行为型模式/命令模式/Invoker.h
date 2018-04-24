//
//  Invoker.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@interface Invoker : NSObject

+ (instancetype)sharedInstance;

// 回退指令
- (void)goBack;

// 添加操作指令
- (void)addAndExcute:(id <CommandProtocol>)command;

@end
