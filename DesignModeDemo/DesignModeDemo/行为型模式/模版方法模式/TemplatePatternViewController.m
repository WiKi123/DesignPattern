//
//  TemplatePatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "TemplatePatternViewController.h"
#import "Basketball.h"
#import "Football.h"

@interface TemplatePatternViewController ()

@end

@implementation TemplatePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 足球游戏
    Game *footballGame = [Football new];
    [footballGame initGame];
    [footballGame startPlay];
    [footballGame gameSave];
    [footballGame pause];
    [footballGame exitGame];
    
    NSLog(@"#####################\n");
    
    
    // 篮球游戏的创建
    Game *baskeballGame = [Basketball new];
    [baskeballGame initGame];
    [baskeballGame startPlay];
    [baskeballGame gameSave];
    [baskeballGame pause];
    [baskeballGame exitGame];

    
}



@end
