//
//  FlyweightPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "FlyweightPatternViewController.h"
#import "FlowerFactory.h"


@interface FlyweightPatternViewController ()

@end

@implementation FlyweightPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    /*
     cell的复用机制其实就是享元模式
     */
    
    FlowerFactory *factory = [[FlowerFactory alloc] init];
    
    NSMutableArray *mutArr = [[NSMutableArray alloc] init];
    
    for (int i=0; i<5; i++) {
        
        FlowerType flowerType = arc4random_uniform(kTotalNumberFlower);
        
        // 使用缓存池工厂方法来调用.类型是随机的
        
        Flower *flower = [factory flowerWithType:flowerType];
        // 简单的创建方式
        [mutArr addObject:flower];
    }
    
}


@end
