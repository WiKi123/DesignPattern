//
//  CarCompanyProtocol.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol CarCompanyProtocol <NSObject>

@required

- (void)buildCarBody:(NSString *)carBody;

- (void)buildEngine:(NSString *)engine;

- (void)buildTyre:(NSString *)tyre;

@end
