//
//  CompositePatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "CompositePatternViewController.h"
#import "CompositeNode.h"

@interface CompositePatternViewController ()

/**
 根节点
 */
@property (nonatomic, strong) CompositeNode *rootNode;

@end

@implementation CompositePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    // 创建根节点
    self.rootNode = [CompositeNode nodeWithNodeName:@"A"];
    
    // 创建第一级字节点
    CompositeNode *b = [CompositeNode nodeWithNodeName:@"B"];
    [self.rootNode addNode:b];
    CompositeNode *c = [CompositeNode nodeWithNodeName:@"C"];
    [self.rootNode addNode:c];
    CompositeNode *d = [CompositeNode nodeWithNodeName:@"D"];
    [self.rootNode addNode:d];
    
    // 创建第二级子节点
    [c addNode:[CompositeNode nodeWithNodeName:@"E"]];
    [c addNode:[CompositeNode nodeWithNodeName:@"F"]];
    
    [self.rootNode removeNode:b];
    
    NSLog(@"%@", c.childNode);
    NSLog(@"---%@", self.rootNode.childNode);
    
    
}



@end
