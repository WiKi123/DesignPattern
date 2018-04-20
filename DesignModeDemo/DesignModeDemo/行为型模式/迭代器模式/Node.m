//
//  Node.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeData:(id)nodeData {
    
    Node *node = [[self alloc] init];
    node.nodeData = nodeData;
    return node;
    
}

@end
