//
//  LighterCommand.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "LighterCommand.h"

@interface LighterCommand ()
@property (nonatomic, strong) Receiver *receiver;
@property (nonatomic, assign) CGFloat paramter;

@end

@implementation LighterCommand

- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(CGFloat)paramter {
    
    self = [super init];
    if (self) {
        
        self.receiver = receiver;
        self.paramter = paramter;
    }
    return self;
}

// 执行命令
- (void)excute {
    [self.receiver mackeLighter:self.paramter];
}

// 撤销命令
- (void)backExcute {
    [self.receiver mackeDarker:self.paramter];
}

@end

