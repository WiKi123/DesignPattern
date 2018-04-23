//
//  FacadeCar.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "FacadeCar.h"

@implementation FacadeCar

- (void)releaseBrakes {
    NSLog(@"松刹车");
}

- (void)pressBrakes {
    NSLog(@"踩刹车");
}

- (void)pressAccelerator {
    NSLog(@"踩油门");
}

- (void)releaseAccelerator {
    NSLog(@"松油门");
}

@end
