//
//  LinkIterator.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkListProtocol.h"
#import "LinkedList.h"

@interface LinkIterator : NSObject <LinkListProtocol>

/**
 迭代器的实现方法
 */
+ (instancetype)linkedObjectIterator:(LinkedList *)linkedList;

@end
