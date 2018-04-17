//
//  Mediator.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Colleague.h"

@interface Mediator : NSObject <ColleagueDelegate>

@end
