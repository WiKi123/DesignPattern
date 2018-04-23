//
//  MementoCenter.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "MementoCenter.h"
#import "FastCoder.h"


@implementation MementoCenter

// 存对象的状态
+ (void)saveMementoObject:(id <MementoProtocol>)object withKey:(NSString *)key {
    
    id data = [object currentState];
    // 转化data为NSData
    NSData *tmpData = [FastCoder dataWithRootObject:data];
    
    if (tmpData) {
        [[NSUserDefaults standardUserDefaults] setObject:tmpData forKey:key];
    }
}

// 取出对象
+ (id)mementoObjectWithKey:(NSString *)key {
    id data = nil;
    
    NSData *tmpData = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    
    if (tmpData) {
        // 解码
        data = [FastCoder objectWithData:tmpData];
    }
    
    return data;
}


@end
