//
//  MementoCenter.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (MementoCenter)

// 存储状态
- (void)saveStateWithKey:(NSString *)key;

// 恢复状态
- (void)recoverFromStateWithKey:(NSString *)key;

@end
