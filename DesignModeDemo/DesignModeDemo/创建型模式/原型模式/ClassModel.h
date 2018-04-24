//
//  ClassModel.h
//  NSCopingDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "BaseCopyObject.h"

@interface ClassModel : BaseCopyObject

@property (nonatomic, copy) NSString *className;
@property (nonatomic, copy) NSArray *students;

@end
