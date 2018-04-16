//
//  AdapterManager.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "AdapterManager.h"

@interface AdapterManager ()

@property (nonatomic,strong) AdapterUSD *adapterUSD;

@end


@implementation AdapterManager

- (instancetype)initWithAdapter:(AdapterUSD *)adapter {
    self = [super init];
    if (self) {
        _adapterUSD = adapter;
    }
    return self;
}


- (float)getCNY {
    
    return [self.adapterUSD getUSD] * 6.6;
}

@end
