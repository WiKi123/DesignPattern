//
//  LinkListProtocol.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol LinkListProtocol <NSObject>

/**
 下一个对象
 */
- (id)nextObject;


/**
 重置迭代器
 */
- (void)resetIterator;

@end
