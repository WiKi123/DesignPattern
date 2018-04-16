//
//  ModelOneAdapter.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ModelOneAdapter.h"

@interface ModelOneAdapter ()
    
@property (nonatomic, strong) ModelOne *model; /**< 输入的模型数据 */

@end

@implementation ModelOneAdapter

- (instancetype)initWithModel:(ModelOne *)model {

    self = [super init];
    if (self) {
        self.model = model;
    }
    return self;
}

#pragma mark - UserInfoProtocol

- (NSString *)getName {
    
    return  self.model.userName;
}

- (NSString *)getAge {
    
    return self.model.age;
}

@end
