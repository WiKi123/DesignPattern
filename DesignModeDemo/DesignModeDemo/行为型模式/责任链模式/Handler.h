//
//  Handler.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Order.h"

@interface Handler : NSObject

@property (nonatomic, strong) Handler *successor;

- (void)handlerOrder:(Order *)order;

@end
