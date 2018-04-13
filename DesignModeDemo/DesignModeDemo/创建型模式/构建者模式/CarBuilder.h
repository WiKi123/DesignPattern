//
//  CarBuilder.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarCompanyProtocol.h"

@protocol CarBuilder <NSObject>

@required

- (id<CarBuilder>)buildCarBody:(NSString *)carBody;

- (id<CarBuilder>)buildEngine:(NSString *)engine;

- (id<CarBuilder>)buildTyre:(NSString *)tyre;

- (id<CarCompanyProtocol>)getCar;

@end
