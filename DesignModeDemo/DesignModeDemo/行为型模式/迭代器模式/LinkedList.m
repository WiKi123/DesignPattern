//
//  LinkedList.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "LinkedList.h"

@implementation LinkedList

- (instancetype)init {
    self = [super init];
    if (self) {
        //系统指向第一个节点，里面是空的，第二个节点才有数据。
        self.headNode = [Node new];
    }
    return self;
}


- (void)addNodeData:(id)nodeData {
    
    if (self.headNode == nil) {
        self.headNode = [Node nodeData:nodeData];
    }else{
        [self addNodeData:nodeData node:self.headNode];
    }
    
    self.numberOfNode++;
    
}

- (void)addNodeData:(id)nodeData node:(Node *)node {
    
    if (node.nextNode == nil) {
        node.nextNode = [Node nodeData:nodeData];
    }else{
        [self addNodeData:nodeData node:node.nextNode];
    }
    
}

@end
