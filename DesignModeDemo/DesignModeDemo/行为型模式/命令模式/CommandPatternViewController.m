//
//  CommandPatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/24.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "CommandPatternViewController.h"
#import "Receiver.h"
#import "Invoker.h"
#import "DarkerCommand.h"
#import "LighterCommand.h"


@interface CommandPatternViewController ()

@property (nonatomic, strong) UIButton *lightBtn;
@property (nonatomic, strong) UIButton *darkBtn;
@property (nonatomic, strong) UIButton *backBtn;
@property (nonatomic, strong) Receiver *receiver;

@end

@implementation CommandPatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.lightBtn];
    [self.view addSubview:self.darkBtn];
    [self.view addSubview:self.backBtn];
    
    // 接收器
    self.receiver = [[Receiver alloc] init];
    [self.receiver setReceiverView:self.view];
}

#pragma mark - private

- (void)lightClick:(id)sender{
    
    LighterCommand *command = [[LighterCommand alloc] initWithReceiver:self.receiver paramter:0.1];
    [[Invoker sharedInstance] addAndExcute:command];
}

- (void)darkClick:(id)sender{
    
    DarkerCommand *command = [[DarkerCommand alloc] initWithReceiver:self.receiver paramter:0.1];
    [[Invoker sharedInstance] addAndExcute:command];
}

- (void)backClick:(id)sender{
    
    [[Invoker sharedInstance] goBack];

}

#pragma mark - setter & getter

- (UIButton *)lightBtn {
    
    if (_lightBtn == nil) {
        _lightBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _lightBtn.backgroundColor = [UIColor blackColor];
        _lightBtn.titleLabel.textColor = [UIColor whiteColor];
        _lightBtn.frame = CGRectMake(10, 200, 80, 50);
        [_lightBtn setTitle:@"变亮" forState:UIControlStateNormal];
        [_lightBtn addTarget:self action:@selector(lightClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _lightBtn;
}

- (UIButton *)darkBtn {
    
    if (_darkBtn == nil) {
        _darkBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _darkBtn.backgroundColor = [UIColor blackColor];
        _darkBtn.titleLabel.textColor = [UIColor whiteColor];
        _darkBtn.frame = CGRectMake(120, 200, 80, 50);
        [_darkBtn setTitle:@"变暗" forState:UIControlStateNormal];
        [_darkBtn addTarget:self action:@selector(darkClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _darkBtn;
}

- (UIButton *)backBtn {
    
    if (_backBtn == nil) {
        _backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _backBtn.backgroundColor = [UIColor blackColor];
        _backBtn.titleLabel.textColor = [UIColor whiteColor];
        _backBtn.frame = CGRectMake(250, 200, 80, 50);
        [_backBtn setTitle:@"撤销" forState:UIControlStateNormal];
        [_backBtn addTarget:self action:@selector(backClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _backBtn;
}
@end
