//
//  ObserverPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ObserverPatternViewController.h"
#import "SubscibeCenter.h"

@interface ObserverPatternViewController () <SubscibeProtocol>

@end

@implementation ObserverPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    [SubscibeCenter creatNumber:@"订阅号-美食"];
    
    [SubscibeCenter addUser:self withNumber:@"订阅号-美食"];
    
    //收不到这个消息
    [SubscibeCenter sendMessage:@"有新书啦" withNumber:@"订阅号-书记"];
    
    //可以收到这条消息
    [SubscibeCenter sendMessage:@"簋街牛蛙贼好吃" withNumber:@"订阅号-美食"];
    
}

#pragma mark - SubscibeProtocol

- (void)sendMessage:(NSString *)message withSubscibeNum:(NSString *)subscibeNum {
    NSLog(@"message is : %@ , number is : %@",message,subscibeNum);
}

@end
