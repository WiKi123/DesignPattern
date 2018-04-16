//
//  AdapterManager.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MoneyAdapterProtocol.h"
#import "AdapterUSD.h"

@interface AdapterManager : NSObject <MoneyAdapterProtocol>

- (instancetype)initWithAdapter:(AdapterUSD *)adapter;

@end
