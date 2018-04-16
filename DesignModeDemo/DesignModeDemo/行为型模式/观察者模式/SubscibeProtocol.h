//
//  SubscibeProtocol.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SubscibeProtocol <NSObject>

@required

- (void)sendMessage:(NSString *)message withSubscibeNum:(NSString *)subscibeNum;

@end
