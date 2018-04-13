//
//  PenFactory.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "PenFactory.h"
#import "Pencil.h"
#import "BallpointPen.h"

@implementation PenFactory

+ (Pen *)penFactory:(PenType)penType{
    
    Pen *pen = nil;
    
    switch (penType) {
        case PenTypePencil:
            pen = [[Pencil alloc] init];
            break;
        case PenTypeBallpointPen:
            pen = [[BallpointPen alloc]init];
        default:
            break;
    }
    return pen;
    
}
@end
