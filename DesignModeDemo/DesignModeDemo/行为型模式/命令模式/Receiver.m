//
//  Receiver.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Receiver.h"

@implementation Receiver

- (void)setReceiverView:(UIView *)receiverView {
    // 获取数值
    _receiverView = receiverView;
    UIColor *color = _receiverView.backgroundColor;
    
    [color getWhite:&_white alpha:&_alpha];
}

// 变暗的接口
- (void)mackeDarker:(CGFloat)pamameter {
    _white -= pamameter;
    // 设置取值范围
    _white = MAX(0, _white);
    
    // 设置背景色
    _receiverView.backgroundColor = [UIColor colorWithWhite:_white alpha:_alpha];
}

// 变亮的接口
- (void)mackeLighter:(CGFloat)pamameter {
    _white += pamameter;
    // 设置取值范围
    _white = MIN(1, _white);
    
    // 设置背景色
    _receiverView.backgroundColor = [UIColor colorWithWhite:_white alpha:_alpha];
}

@end
