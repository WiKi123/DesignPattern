//
//  GameDecortor.m
//  GameComponetDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "GameDecortor.h"

@interface GameDecortor ()
@property (nonatomic, strong) GameLoL *gameLoL;
@end

@implementation GameDecortor

- (instancetype)init {
    self = [super init];
    if (self) {
        self.gameLoL = [[GameLoL alloc] init];
    }
    return self;
}

// GameLoL里面所有的方法
- (void)up {
    [self.gameLoL up];
}

- (void)down {
    [self.gameLoL down];
}

- (void)left {
    [self.gameLoL left];
}

- (void)right {
    [self.gameLoL right];
}

- (void)select {
    [self.gameLoL select];
}

- (void)start {
    [self.gameLoL start];
}

- (void)commandA {
    [self.gameLoL commandA];
}

- (void)commandB {
    [self.gameLoL commandB];
}

- (void)commandC {
    [self.gameLoL commandC];
}

- (void)commandY {
    [self.gameLoL commandD];
}
@end
