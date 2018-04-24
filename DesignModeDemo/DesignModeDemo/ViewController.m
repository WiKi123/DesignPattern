//
//  ViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/12.
//  Copyright © 2018年 koala. All rights reserved.
//


#define HEADER_HEIGHT                       ((AFTER_IOS7)?64:44)
#define AFTER_IOS7                          ([[[UIDevice currentDevice] systemVersion] intValue] >= 7)
#define APP_SCREEN_WIDTH                    [UIScreen mainScreen].bounds.size.width
#define APP_SCREEN_HEIGHT                   [UIScreen mainScreen].bounds.size.height


#import "ViewController.h"


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic,strong) UITableView   *tbView;
@property (nonatomic,strong) NSArray       *designModeArray;
@property (nonatomic,strong) NSDictionary  *modeVCDic;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"24种设计模式-DEMO";
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.tbView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - delegate & dataSource;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.designModeArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.textLabel.text = [self.designModeArray objectAtIndex:indexPath.row];
    if (indexPath.row < 5) {
        cell.backgroundColor = [UIColor redColor];
    }else if(indexPath.row < 12){
        cell.backgroundColor = [UIColor greenColor];
    }else{
        cell.backgroundColor = [UIColor blueColor];
    }
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    NSString *type = [self.designModeArray objectAtIndex:indexPath.row];
    NSLog(@"\n\n=================设计模式：%@=================\n\n",type);
    NSString *vcName = [self.modeVCDic objectForKey:type];
    UIViewController *subViewController = [[NSClassFromString(vcName) alloc] init];
    subViewController.title = type;
    subViewController.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:subViewController animated:YES];
    
}

#pragma mark - getters and setters;

- (UITableView *)tbView{
    
    if (_tbView == nil) {
//        CGRect tbRect = CGRectMake(0, 0, APP_SCREEN_WIDTH, APP_SCREEN_HEIGHT - HEADER_HEIGHT);
        _tbView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];;
        _tbView.delegate =  self;
        _tbView.dataSource = self;
        _tbView.tableFooterView = [[UIView alloc] init];
    }
    return _tbView;
}


- (NSArray *)designModeArray{
    
    if (_designModeArray == nil) {
        _designModeArray = @[@"工厂方法模式",@"抽象工厂模式",@"单例模式",@"构建者模式",@"原型模式",
                             
                             @"适配器模式",@"装饰器模式",@"代理模式",@"外观模式",@"桥接模式",@"组合模式",
                             @"享元模式",
                             
                             @"策略模式",@"模板模式",@"观察者模式",@"中介者模式",@"迭代器模式",@"责任链模式",
                             @"命令模式",@"备忘录模式",@"状态模式",@"访问者模式",@"解释器模式"];
    }
    return _designModeArray;
    
}

- (NSDictionary *)modeVCDic{
    
    if (_modeVCDic == nil) {
        
        _modeVCDic = @{
                       @"工厂方法模式":@"FactoryPatternViewController",
                       @"抽象工厂模式":@"AbstractFactoryPatternViewController",
                       @"单例模式":@"SingletonPatternViewController",
                       @"构建者模式":@"BuilderViewController",
                       @"原型模式":@"PrototypePatternViewController",
                       
                       @"适配器模式":@"AdapterViewController",
                       @"装饰器模式":@"DecoratorPatternViewController",
                       @"代理模式":@"DelegatePatternViewController",
                       @"外观模式":@"FacadePatternViewController",
                       @"桥接模式":@"BridgePatternViewController",
                       @"组合模式":@"CompositePatternViewController",
                       @"享元模式":@"FlyweightPatternViewController",
                       
                       @"策略模式":@"StrategyPatternViewController",
                       @"模板模式":@"TemplatePatternViewController",
                       @"观察者模式":@"ObserverPatternViewController",
                       @"中介者模式":@"MediatorPatternViewController",
                       @"迭代器模式":@"IteratorPatternViewController",
                       @"责任链模式":@"ChainOfResponsibilityPatternViewController",
                       @"命令模式":@"CommandPatternViewController",
                       @"备忘录模式":@"MementoPatternViewController",
                       @"状态模式":@"StatePatternViewController",
                       @"访问者模式":@"VisitorPatternViewController",
                       @"解释器模式":@"InterpreterPatternViewController"
        
                       };
    }
    return _modeVCDic;
    
}

@end
