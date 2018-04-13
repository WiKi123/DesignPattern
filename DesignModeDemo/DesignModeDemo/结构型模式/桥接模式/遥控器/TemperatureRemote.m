//
//  TemperatureRemote.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "TemperatureRemote.h"

@implementation TemperatureRemote

- (void)warmer {
    [super setCommand:@"warmer"];
}

- (void)colder {
    [super setCommand:@"colder"];
}

@end
