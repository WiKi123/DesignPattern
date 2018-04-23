//
//  MementorCenter.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

@interface MementoCenter : NSObject

// 存对象的状态
+ (void)saveMementoObject:(id <MementoProtocol>)object withKey:(NSString *)key;

// 取出对象
+ (id)mementoObjectWithKey:(NSString *)key;


@end
