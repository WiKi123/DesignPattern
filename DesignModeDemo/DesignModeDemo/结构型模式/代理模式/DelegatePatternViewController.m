//
//  DelegatePatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/17.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "DelegatePatternViewController.h"
#import "Person.h"

@interface DelegatePatternViewController () <PersonDelegate>

@end

@implementation DelegatePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Person *koala = [[Person alloc] init];
    koala.delegate = self;
    [koala run:5];
    
}

- (void)person:(Person *)person runSpeed:(NSInteger)speed {
    
    NSLog(@"spped is %d",speed);
    
}



@end
