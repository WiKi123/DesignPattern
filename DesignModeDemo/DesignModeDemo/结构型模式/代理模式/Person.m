//
//  Person.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)run:(NSInteger)speed {

    if (self.delegate && [self.delegate respondsToSelector:@selector(person:runSpeed:)]) {
        
        [self.delegate person:self runSpeed:speed * 1.25];
    }
    
}


@end
