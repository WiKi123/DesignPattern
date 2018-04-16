//
//  AdapterViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

/*
 适配器模式: 1.目标协议   2.适配者   3.适配器
 1.类适配器: 适配器是继承咋们适配者的
 2.对象适配器: 适配器是引用咱们的适配者的
 
 桥接模式跟适配器的区别:
 适配器: 改变已有的两个接口, 让他们相兼容. (组件之间的适配, 音视频方面, SDK跟自己写的代码之间适配)
 桥接模式:分离抽象化和实现类. 两者的接口可以不同,主要是在于分离
 
 桥接模式先有桥, 才有两端的实现.
 适配器模式是先有两边的, 才有适配器
 */


#import "AdapterViewController.h"

@interface AdapterViewController () <UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) NSArray *array;
@property (nonatomic, strong) UITableView   *tbView;
@property (nonatomic, strong) NSDictionary  *modeVCDic;

@end

@implementation AdapterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.array = @[@"案例1",@"案例2"];
    [self.view addSubview:self.tbView];
    
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - delegate & dataSource;

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return self.array.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.textLabel.text = [self.array objectAtIndex:indexPath.row];
    
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    return 50;
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *type = [self.array objectAtIndex:indexPath.row];
    NSString *vcName = [self.modeVCDic objectForKey:type];
    UIViewController *subViewController = [[NSClassFromString(vcName) alloc] init];
    subViewController.title = type;
    subViewController.view.backgroundColor = [UIColor whiteColor];
    [self.navigationController pushViewController:subViewController animated:YES];
    
}

#pragma mark - getters and setters;

- (UITableView *)tbView{
    
    if (_tbView == nil) {
        _tbView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];;
        _tbView.delegate =  self;
        _tbView.dataSource = self;
        _tbView.tableFooterView = [[UIView alloc] init];
    }
    return _tbView;
}


- (NSDictionary *)modeVCDic{
    
    if (_modeVCDic == nil) {
        
        _modeVCDic = @{
                       @"案例1":@"AdapterDemo1ViewController",
                       @"案例2":@"AdapterDemo2ViewController"
                       };
    }
    return _modeVCDic;
}
    
@end
