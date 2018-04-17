//
//  ConcreteColleague.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "ConcreteColleague.h"

@implementation ConcreteColleague

- (void)chooseRoomSizeChanged:(NSInteger)roomSize {

    self.roomSize = roomSize;
    if (self.delegate && [self.delegate respondsToSelector:@selector(colleagueChoose:)]) {
        [self.delegate colleagueChoose:self];
    }
    
}

@end
