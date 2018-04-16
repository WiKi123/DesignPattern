//
//  AdapterDemo1ViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/16.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "AdapterDemo1ViewController.h"
#import "AdapterCNY.h"
#import "AdapterManager.h"
#import "AdapterUSD.h"

@interface AdapterDemo1ViewController ()

@end

@implementation AdapterDemo1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     把100美元转换成人民币.
     
     类适配器：通过继承来适配两个接口
     对象适配器：不继承被适配者，他们是一个关联关系，相当于引用了这个类
     */
    
    //类适配器
    AdapterCNY *adapterCNY = [[AdapterCNY alloc] init];
    float cny = [adapterCNY getCNY];
    NSLog(@"cny is %f",cny);
    
    
    //对象适配器
    AdapterManager *manager = [[AdapterManager alloc] initWithAdapter:[AdapterUSD new]];
    float cny2 = [manager getCNY];
    NSLog(@"cny2 is %f",cny2);
}



@end
