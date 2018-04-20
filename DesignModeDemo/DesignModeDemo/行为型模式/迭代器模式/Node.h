//
//  Node.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Node : NSObject

/**
 指向下一个节点
 */
@property (nonatomic, strong) Node *nextNode;

/**
 节点里面的data
 */
@property (nonatomic, strong) id  nodeData;


+ (instancetype)nodeData:(id)nodeData;

@end
