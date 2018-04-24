//
//  StudentModel.m
//  NSCopingDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "StudentModel.h"

@implementation StudentModel

- (void)copyOperationWithObject:(StudentModel *)object {
    object.name = self.name;
    object.age = self.age;
}

@end
