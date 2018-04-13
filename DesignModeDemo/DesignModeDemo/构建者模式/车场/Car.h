//
//  CarCompany.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarCompanyProtocol.h"

@interface Car : NSObject <CarCompanyProtocol>

@property (nonatomic,strong,readonly) NSString *carBody;
@property (nonatomic,strong,readonly) NSString *engine;
@property (nonatomic,strong,readonly) NSString *tyre;

@end
