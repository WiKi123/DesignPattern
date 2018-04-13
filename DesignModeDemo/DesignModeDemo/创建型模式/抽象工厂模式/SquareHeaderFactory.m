//
//  SquareHeaderFactory.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "SquareHeaderFactory.h"
#import "SquareView.h"

@implementation SquareHeaderFactory

+ (UIView *)creatHeaderImgView {
    return [[SquareView alloc] init];;
}

@end
