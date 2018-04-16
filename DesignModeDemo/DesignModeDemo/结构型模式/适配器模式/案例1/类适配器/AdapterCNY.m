//
//  AdapterCNY.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "AdapterCNY.h"

@implementation AdapterCNY

- (float)getCNY {
    

    return [self getUSD] * 6.6f;
}

@end
