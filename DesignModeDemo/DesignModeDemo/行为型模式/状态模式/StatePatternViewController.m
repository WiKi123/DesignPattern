//
//  StatePatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "StatePatternViewController.h"
#import "Celling.h"
#import "BuyState.h"
#import "ShipmentState.h"
#import "ChoosingState.h"

@interface StatePatternViewController ()

@end

@implementation StatePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Celling * celling = [Celling new];
    [celling choose];
    celling.state = [ChoosingState new];
    [celling choose];
    celling.state = [BuyState new];
    [celling buy];
    celling.state = [ShipmentState new];
    [celling shipment];
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
