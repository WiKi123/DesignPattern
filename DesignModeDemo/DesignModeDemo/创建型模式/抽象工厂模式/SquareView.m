//
//  SquareView.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "SquareView.h"

@implementation SquareView

- (instancetype)init{
    self = [super init];
    if (self) {
        
        self.frame = CGRectMake(40, 240, 120, 120);
        self.image = [UIImage imageNamed:@"AbstractFactoryPatternImg.jpeg"];
    }
    return self;
    
}
@end
