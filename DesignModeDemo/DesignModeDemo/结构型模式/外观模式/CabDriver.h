//
//  CabDriver.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CabDriver : NSObject

// 到达指定的位置
+ (void)driveToLocation:(NSString *)location;

@end
