//
//  DecoratorPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "DecoratorPatternViewController.h"
#import "GameLoL.h"
#import "GameDecortor.h"
#import "CheatGameDecotor.h"
#import "GameLoL+Cheat.h"
#import "GameLoL+Coin.h"

@interface DecoratorPatternViewController ()

@end

@implementation DecoratorPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    GameLoL *gameLoL = [[GameLoL alloc] init];
    [gameLoL up];
    [gameLoL cheat];
    
    gameLoL.coin = 10;
    NSLog(@"coin %ld", (long)gameLoL.coin);
    
    
    GameDecortor *gameDecortor = [[GameDecortor alloc] init];
    [gameDecortor up];

    // 调用作弊器
    CheatGameDecotor *cheatGameDecotor = [[CheatGameDecotor alloc] init];
    [cheatGameDecotor cheat];
}

@end
