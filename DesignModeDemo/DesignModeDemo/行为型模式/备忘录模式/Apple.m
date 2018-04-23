//
//  Apple.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (id)currentState {
    
    return @{ @"name":self.name,
              @"age" : self.age
              };
}

- (void)recoverFromState:(id)state {
    NSDictionary *data = state;
    self.name = data[@"name"];
    self.age = data[@"age"];
}

@end
