//
//  ConcreteColleague.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Colleague.h"

@interface ConcreteColleague : Colleague

@property (nonatomic,assign) NSInteger roomSize;

- (void)chooseRoomSizeChanged:(NSInteger)roomSize;

@end
