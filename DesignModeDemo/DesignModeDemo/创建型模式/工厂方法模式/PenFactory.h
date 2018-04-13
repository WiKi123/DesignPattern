//
//  PenFactory.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pen.h"

typedef enum : NSUInteger {
    PenTypePencil,
    PenTypeBallpointPen,
    PenTypeNone,
} PenType;

@interface PenFactory : NSObject

+ (Pen *)penFactory:(PenType)penType;

@end
