//
//  Remote.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Remote.h"

@implementation Remote

- (void)setCommand:(NSString *)command {
    
    [self.airConditioner loadCommand:command];
}

@end
