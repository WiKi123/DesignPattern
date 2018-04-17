//
//  Person.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;

@protocol PersonDelegate <NSObject>

@optional

- (void)person:(Person *)person runSpeed:(NSInteger)speed;

@end


@interface Person : NSObject

@property (nonatomic,weak) id<PersonDelegate> delegate;

- (void)run:(NSInteger)speed;

@end



