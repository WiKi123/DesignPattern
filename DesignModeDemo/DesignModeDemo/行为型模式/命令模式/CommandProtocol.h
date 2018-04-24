//
//  CommandProtocol.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol CommandProtocol <NSObject>

// 执行命令
- (void)excute;

// 撤销命令
- (void)backExcute;


@end
