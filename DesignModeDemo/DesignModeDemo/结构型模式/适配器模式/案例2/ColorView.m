//
//  ColorView.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ColorView.h"

@implementation ColorView

- (void)loadModel:(id <UserInfoProtocol>)model {
    
    NSLog(@"UI展示用户姓名：%@，展示用户年龄：%@", [model getName], model.getAge);
}

@end
