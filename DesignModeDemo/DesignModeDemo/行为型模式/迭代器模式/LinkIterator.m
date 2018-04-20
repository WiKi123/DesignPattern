//
//  LinkIterator.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "LinkIterator.h"

@interface LinkIterator ()

@property (nonatomic, strong) LinkedList *linkList;
@property (nonatomic, strong) Node *currentNode;

@end

@implementation LinkIterator

+ (instancetype)linkedObjectIterator:(LinkedList *)linkedList {

    LinkIterator *linkIterator = [[LinkIterator alloc] init];
    linkIterator.linkList = linkedList;
    linkIterator.currentNode = linkedList.headNode;
    return linkIterator;
}


#pragma mark - LinkListProtocol

- (id)nextObject {
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

- (void)resetIterator {
    self.currentNode = self.linkList.headNode;
}

@end
