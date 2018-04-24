//
//  GameLoL+Coin.m
//  GameComponetDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "GameLoL+Coin.h"
#import <objc/runtime.h>

static const NSString *_coinStr = @"_coinStr";
@implementation GameLoL (Coin)

- (void)setCoin:(NSInteger)coin {
    objc_setAssociatedObject(self, (__bridge const void *)_coinStr, @(coin), OBJC_ASSOCIATION_ASSIGN);
    
}

- (NSInteger)coin {
   NSNumber *number = objc_getAssociatedObject(self, (__bridge const void *)_coinStr);
    
    return number.integerValue;
}

@end
