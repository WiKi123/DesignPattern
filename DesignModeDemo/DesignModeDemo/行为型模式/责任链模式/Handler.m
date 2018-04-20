//
//  Handler.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Handler.h"

@implementation Handler

- (void)handlerOrder:(Order *)order {

    [self.successor handlerOrder:order];
}

@end
