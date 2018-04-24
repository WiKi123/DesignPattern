//
//  Receiver.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Receiver : NSObject{
    CGFloat _white;  // 白的
    CGFloat _alpha;  // 透明度
}

// 接收者的view
@property (nonatomic, strong) UIView *receiverView;

// 变暗的接口
- (void)mackeDarker:(CGFloat)pamameter;

// 变亮的接口
- (void)mackeLighter:(CGFloat)pamameter;


@end
