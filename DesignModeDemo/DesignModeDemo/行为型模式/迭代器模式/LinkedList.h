//
//  LinkedList.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Node.h"

@interface LinkedList : NSObject

/**
 头结点
 */
@property (nonatomic, strong) Node *headNode;

/**
 链表中的节点数
 */
@property (nonatomic, assign) NSInteger  numberOfNode;



/**
 添加节点数据
 */
- (void)addNodeData:(id)nodeData;

@end
