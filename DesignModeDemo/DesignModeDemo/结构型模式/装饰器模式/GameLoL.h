//
//  GameLoL.h
//  GameComponetDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameLoL : NSObject

//  上下左右
- (void)up;
- (void)down;
- (void)left;
- (void)right;

// 选择与开始的操作
- (void)select;
- (void)start;

// 按钮
- (void)commandA;
- (void)commandB;
- (void)commandC;
- (void)commandD;

@end
