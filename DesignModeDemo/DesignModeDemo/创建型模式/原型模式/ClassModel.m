//
//  ClassModel.m
//  NSCopingDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ClassModel.h"

@implementation ClassModel
- (void)copyOperationWithObject:(ClassModel *)object {
    object.className = self.className;
//    object.students = self.students;
    
    // 深拷贝
    object.students = [[NSArray alloc] initWithArray:self.students copyItems:YES];


}

@end
