//
//  DirectionRemote.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "DirectionRemote.h"

@implementation DirectionRemote

- (void)up {
    [super setCommand:@"up"];
}

- (void)down {
    
    [super setCommand:@"down"];
}

- (void)left {
    
    [super setCommand:@"left"];
}

- (void)right {
    [super setCommand:@"right"];
}

@end
