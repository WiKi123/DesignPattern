//
//  BaseCopyObject.h
//  NSCopingDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseCopyObject : NSObject <NSCopying>

// 子类不要重载
- (id)copyWithZone:(NSZone *)zone;

// 子类去实现
- (void)copyOperationWithObject:(id)object;

@end
