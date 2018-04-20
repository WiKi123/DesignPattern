//
//  IteratorPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "IteratorPatternViewController.h"
#import "LinkedList.h"
#import "LinkIterator.h"

@interface IteratorPatternViewController ()

@end

@implementation IteratorPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    LinkedList *linkList = [[LinkedList alloc] init];
    [linkList addNodeData:@"A"];
    [linkList addNodeData:@"B"];
    [linkList addNodeData:@"C"];

    // 2.迭代器的创建
    LinkIterator *linkIterator = [LinkIterator linkedObjectIterator:linkList];
    
    // 3.访问每一个元素
    Node *node = nil;
    while (node = [linkIterator nextObject]) {
        NSLog(@"nodeData is --- %@",node.nodeData);
    }
    
    
}



@end
