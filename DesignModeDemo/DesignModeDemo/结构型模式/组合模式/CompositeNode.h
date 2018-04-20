//
//  CompositeNode.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CompositeNode : NSObject

// 节点名字
@property (nonatomic, copy) NSString *nodeName;

// 子节点集合
@property (nonatomic, strong) NSMutableArray<CompositeNode *> *childNode;

// 初始化
+ (instancetype)nodeWithNodeName:(NSString *)nodeName;

// 添加子节点
- (void)addNode:(CompositeNode *)node;

// 删除子节点
- (void)removeNode:(CompositeNode *)node;

// 获取子节点
- (CompositeNode *)nodeAtIndex:(NSInteger)index;


// 打印Node
- (void)operation;

@end
