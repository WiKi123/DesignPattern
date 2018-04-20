//
//  Game.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Game : NSObject

// 初始化游戏
- (void)initGame;

// 暂停操作
- (void)pause;

// 游戏存储
- (void)gameSave;

// 退出游戏
- (void)exitGame;

// 开始游戏
- (void)startPlay;

@end
