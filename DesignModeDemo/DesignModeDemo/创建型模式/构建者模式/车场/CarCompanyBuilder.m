//
//  CarBuilder.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "CarCompanyBuilder.h"
#import "Car.h"

@interface CarCompanyBuilder ()

@property (nonatomic, strong) id<CarCompanyProtocol> car;   //Car *car; Car遵守协议CarCompanyProtocol

@end

@implementation CarCompanyBuilder

- (instancetype)init{
    
    self = [super init];
    if (self) {
        _car = [[Car alloc] init];
    }
    return self;    
}


#pragma mark - CarBuilder

- (id<CarBuilder>)buildCarBody:(NSString *)carBody {
    
    [_car buildCarBody:carBody];
    return self;
}

- (id<CarBuilder>)buildEngine:(NSString *)engine {
    
    [_car buildEngine:engine];
    return self;
}

- (id<CarBuilder>)buildTyre:(NSString *)tyre {
    
    [_car buildTyre:tyre];
    return self;
}

- (id<CarCompanyProtocol>)getCar {
    
    return _car;
}

@end
