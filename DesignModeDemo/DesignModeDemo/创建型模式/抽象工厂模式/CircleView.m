//
//  CircleView.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

- (instancetype)init{
    self = [super init];
    if (self) {
     
        self.clipsToBounds = YES;
        self.frame = CGRectMake(60, 100, 100, 100);
        self.layer.cornerRadius = 50;
        self.image = [UIImage imageNamed:@"AbstractFactoryPatternImg.jpeg"];
    }
    return self;
    
}
@end
