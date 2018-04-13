//
//  AirConditioner.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AirConditioner : NSObject


//空调接收命令
-  (void)loadCommand:(NSString *)command;

@end
