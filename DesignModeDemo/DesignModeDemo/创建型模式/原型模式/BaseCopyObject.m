//
//  BaseCopyObject.m
//  NSCopingDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "BaseCopyObject.h"

@implementation BaseCopyObject

- (id)copyWithZone:(NSZone *)zone {
    BaseCopyObject *copyObject = [[self class] allocWithZone:zone];
    // 赋值操作
    [self copyOperationWithObject:copyObject];
    
    return copyObject;
}

- (void)copyOperationWithObject:(id)object {
}

@end
