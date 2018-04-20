//
//  FileCell.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/20.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "FileCell.h"
#import "UIView+SetRect.h"
#import "File.h"
#import "FileViewController.h"

@interface FileCell ()

@property (nonatomic, strong) UIImageView  *fileImageView;
@property (nonatomic, strong) UIImageView  *folderImageView;
@property (nonatomic, strong) UILabel      *iconNameLabel;
@property (nonatomic, strong) UIButton     *button;

@property (nonatomic, strong) UILabel      *nameLabel;

@end

@implementation FileCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        
        [self buildView];
    }
    
    return self;
}

- (void)buildView {
    
    UIView *line         = [[UIView alloc] initWithFrame:CGRectMake(0, 79.5f, 500, 0.5f)];
    line.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.25f];
    [self addSubview:line];
    
    self.fileImageView   = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"File"]];
    self.folderImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Folder"]];
    self.fileImageView.center   = CGPointMake(40, 50);
    self.folderImageView.center = CGPointMake(40, 50);
    [self addSubview:self.folderImageView];
    [self addSubview:self.fileImageView];
    
    self.iconNameLabel               = [[UILabel alloc] initWithFrame:CGRectMake(0, 13, 80, 20)];
    self.iconNameLabel.font          = [UIFont fontWithName:@"AppleSDGothicNeo-Light" size:12.f];
    self.iconNameLabel.textAlignment = NSTextAlignmentCenter;
    [self addSubview:self.iconNameLabel];
    
    self.nameLabel      = [[UILabel alloc] initWithFrame:CGRectMake(80, 10, 200, 60)];
    self.nameLabel.font = [UIFont fontWithName:@"Avenir-Book" size:12.f];
    [self addSubview:self.nameLabel];
    
    self.button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 500, 80)];
    [self.button addTarget:self
                    action:@selector(buttonEvent)
          forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:self.button];
}

- (void)buttonEvent {
    File *file = self.data;
    
    if (file.fileType == kFolder) {
        FileViewController *fvc = [[FileViewController alloc] init];
        fvc.rootFile = file;
        [self.controller.navigationController pushViewController:fvc animated:YES];
    }
    
    NSLog(@"----%@-", self.indexPath);
}

// 切换到文件夹状态
- (void)changeToFolderState {
    
    self.fileImageView.hidden    = YES;
    self.folderImageView.hidden  = NO;
    self.iconNameLabel.textColor = [UIColor blackColor];
    self.nameLabel.textColor     = [UIColor blackColor];
    self.iconNameLabel.text      = @"Folder";
}

- (void)loadContent {
    // 1.获取数据
    File *file = self.data;
    
    // 2. 文件名等于文件名
    self.nameLabel.text = file.name;
    
    // 3.判断文件类型与文件夹的类型
    if (file.fileType == kFolder) {
        // 3.1切换文件夹图标
        [self changeToFolderState];
        
    } else if (file.fileType == kFile) {
        // 3.2切换到文件图标
        [self changeToFileState];
    }
}


// 切换到文件状态
- (void)changeToFileState {
    
    self.fileImageView.hidden    = NO;
    self.folderImageView.hidden  = YES;
    self.iconNameLabel.textColor = [UIColor grayColor];
    self.nameLabel.textColor     = [UIColor grayColor];
    self.iconNameLabel.text      = @"File";
}


@end


