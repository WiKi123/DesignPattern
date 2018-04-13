//
//  Director.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarBuilder.h"


@interface Director : NSObject

- (instancetype)initWithBuilder:(id<CarBuilder>)builder;

//获取想要的车
- (id<CarCompanyProtocol>)constructWithBody:(NSString *)carBody
                                  andEngine:(NSString *)engine
                                    andTyre:(NSString *)tyre;

@end
