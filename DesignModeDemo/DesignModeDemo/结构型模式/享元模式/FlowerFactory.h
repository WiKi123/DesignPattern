//
//  FlowerFactory.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flower.h"

typedef enum : NSUInteger {
    FlowerTypeRed,
    FlowerTypeBlue,
    FlowerTypeWhite,
    kTotalNumberFlower  // 用于计数的. index = 3 = type number
} FlowerType;

@interface FlowerFactory : NSObject

- (Flower *)flowerWithType:(FlowerType)flowerType;

@property (nonatomic, strong) NSMutableDictionary *flowerPools;


@end
