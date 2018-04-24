//
//  VisitorPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "VisitorPatternViewController.h"
#import "AccountBook.h"
#import "IncomeBill.h"
#import "ConsumeBill.h"
#import "Boss.h"
#import "CAP.h"

@interface VisitorPatternViewController ()

@end

@implementation VisitorPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    AccountBook * accountBook= [AccountBook new];
    IncomeBill * bill = [IncomeBill new];
    bill.item=@"卖广告";
    bill.amount = 10000;
    [accountBook addBill:bill];
    bill = [IncomeBill new];
    bill.item=@"卖商品";
    bill.amount = 20000;
    [accountBook addBill:bill];
    
    ConsumeBill *consume = [ConsumeBill new];
    consume.item = @"工资";
    consume.amount = 1000;
    [accountBook addBill:consume];
    
    consume = [ConsumeBill new];
    consume.item = @"材料费";
    consume.amount = 2000;
    [accountBook addBill:consume];
    
    
    Boss * boss = [Boss new];
    [accountBook show:boss];
    CAP * cap = [CAP new];
    [accountBook show:cap];
    
    NSLog(@"收入：%lf 支出： %lf",boss.totalIncome,boss.totalConsume);
}



@end
