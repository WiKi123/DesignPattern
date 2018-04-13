//
//  CircleHeaderFactory.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "CircleHeaderFactory.h"
#import "CircleView.h"

@implementation CircleHeaderFactory

+ (UIView *)creatHeaderImgView {
    return [[CircleView alloc] init];
}

@end
