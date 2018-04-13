//
//  FlowerFactory.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "FlowerFactory.h"

@implementation FlowerFactory

- (Flower *)flowerWithType:(FlowerType)flowerType{

    if (self.flowerPools == nil) {
        self.flowerPools = [NSMutableDictionary dictionaryWithCapacity:kTotalNumberFlower];
    }
    
    Flower *flower = [self.flowerPools objectForKey:[NSNumber numberWithInteger:flowerType]];
    
    if (flower == nil) {
        
        flower = [[Flower alloc] init];
        switch (flowerType) {
            case FlowerTypeRed:
                flower.color = @"红色";
                flower.name  = @"红玫瑰";
                break;
             
            case FlowerTypeBlue:
                flower.color = @"蓝色";
                flower.name = @"普罗旺斯";
                break;
            case FlowerTypeWhite:
                flower.color = @"白色";
                flower.name = @"白百何";
            default:
                break;
        }
        
        [self.flowerPools setObject:flower forKey:[NSNumber numberWithInt:flowerType]];
    }
    
    return flower;
}


@end
