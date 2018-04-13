//
//  Director.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Director.h"

@interface Director()

@property (nonatomic,strong) id<CarBuilder> carBuilder;

@end


@implementation Director

- (instancetype)initWithBuilder:(id<CarBuilder>)builder{
    
    self = [super init];
    if (self) {
        _carBuilder = builder;
    }
    return self;
}

- (id<CarCompanyProtocol>)constructWithBody:(NSString *)carBody
                                  andEngine:(NSString *)engine
                                    andTyre:(NSString *)tyre{
    
   return [[[[_carBuilder buildCarBody:carBody] buildEngine:engine] buildTyre:tyre] getCar];
    
}

@end
