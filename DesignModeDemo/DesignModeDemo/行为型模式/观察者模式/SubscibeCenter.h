//
//  SubscibeCenter.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SubscibeProtocol.h"

@interface SubscibeCenter : NSObject

+ (void)creatNumber:(NSString *)number;

+ (void)removeNumber:(NSString *)number;

+ (void)addUser:(id <SubscibeProtocol>)user withNumber:(NSString *)number;

+ (void)removeUser:(id <SubscibeProtocol>)user withNumber:(NSString *)number;

+ (void)sendMessage:(NSString *)message withNumber:(NSString *)number;

@end
