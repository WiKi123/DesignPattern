//
//  File.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum :NSUInteger {
    kFile,// 文件
    kFolder, // 文件夹
    
}EFile;

@interface File : NSObject

// 文件夹或文件名, 根据枚举来区分
@property (nonatomic, copy) NSString *name;

@property (nonatomic, assign) EFile fileType; /**< 文件类型 */

// 集合
@property (nonatomic, strong) NSMutableArray<File *> *childFiles;

// 添加文件到集合
- (void)addFile:(File *)file;

// 初始化的方法
+ (instancetype)fileWithFileType:(EFile)fileType fileName:(NSString *)name;

@end
