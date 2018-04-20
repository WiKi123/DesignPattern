//
//  CompositeNode.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "CompositeNode.h"

@implementation CompositeNode

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childNode = [NSMutableArray array];
    }
    return self;
}

// 初始化
+ (instancetype)nodeWithNodeName:(NSString *)nodeName {
    CompositeNode *node = [[[self class] alloc] init];
    node.nodeName = nodeName;
    
    return node;
}

// 添加子节点
- (void)addNode:(CompositeNode *)node {
    [self.childNode addObject:node];
}

// 删除子节点
- (void)removeNode:(CompositeNode *)node {
    [self.childNode removeObject:node];
}

// 获取子节点
- (CompositeNode *)nodeAtIndex:(NSInteger)index {
    if (index >= self.childNode.count) {
        return nil;
        
    } else {
        return self.childNode[index];
    }
}

// 打印Node
- (void)operation {
    NSLog(@"nodeName =  %@", self.nodeName);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"node - %@",self.nodeName];
}

@end
