//
//  CabDriver.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "CabDriver.h"
#import "FacadeCar.h"
#import "Taximeter.h"

@implementation CabDriver

+ (void)driveToLocation:(NSString *)location {
    // 启动计价器
    Taximeter *taximeter = [[Taximeter alloc] init];
    [taximeter start];
    
    // 驾驶汽车
    FacadeCar *car = [[FacadeCar alloc] init];
    [car releaseBrakes];  // 松刹车
    [car pressAccelerator]; // 踩油门
    
    // 到达位置的操作
    [car releaseAccelerator];
    [car pressBrakes];
    [taximeter stop];
    
    NSLog(@"%@已经到达",location);
}

@end
