//
//  ModelTwoAdapter.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ModelTwoAdapter.h"

@interface ModelTwoAdapter ()

@property (nonatomic, strong) ModelTwo *model; /**< 输入的模型数据 */

@end

@implementation ModelTwoAdapter

- (instancetype)initWithModel:(ModelTwo *)model {

    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}


#pragma mark - UserInfoProtocol

- (NSString *)getName {
    
    return  [NSString stringWithFormat:@"%@ %@",self.model.lastName,self.model.firstName];
}

- (NSString *)getAge {
    
    return  [NSString stringWithFormat:@"%ld",(long)self.model.age];
}


@end
