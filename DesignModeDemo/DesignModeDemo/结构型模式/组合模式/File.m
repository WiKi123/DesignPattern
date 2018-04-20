//
//  File.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "File.h"

@implementation File

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.childFiles = [NSMutableArray array];
    }
    return self;
}

// 添加文件到集合
- (void)addFile:(File *)file {
    [self.childFiles addObject:file];
}

// 初始化的方法
+ (instancetype)fileWithFileType:(EFile)fileType fileName:(NSString *)name {
    File *file = [[self alloc] init];
    file.fileType = fileType;
    file.name = name;
    
    return file;
}



@end
