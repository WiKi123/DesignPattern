//
//  StudentModel.h
//  NSCopingDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "BaseCopyObject.h"

@interface StudentModel : BaseCopyObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *age;

@end
