//
//  Remote.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AirConditioner.h"

@interface Remote : NSObject

@property (nonatomic,strong)  AirConditioner *airConditioner;

//遥控器给空调发送指令
- (void)setCommand:(NSString *)command;

@end
