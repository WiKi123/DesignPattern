//
//  PrototypePatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "PrototypePatternViewController.h"
#import "StudentModel.h"
#import "ClassModel.h"

@interface PrototypePatternViewController ()

@end

@implementation PrototypePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    StudentModel *stu1 = [StudentModel new];
    stu1.name = @"张三";
    
    StudentModel *stu2 = stu1.copy;
    
    // classModel
    ClassModel *class1 = [[ClassModel alloc] init];
    class1.className = @"ban ji 1";
    class1.students = @[stu1, stu2];
    
    ClassModel *class2 = class1.copy;
    NSLog(@"%@ ----%@", class1, class2);
    
    NSLog(@"%@", class1.students);
    NSLog(@"%@", class2.students);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
