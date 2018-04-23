//
//  Apple.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MementoProtocol.h"

@interface Apple : NSObject <MementoProtocol>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSNumber *age;

@end
