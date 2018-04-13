//
//  BridgePatternViewController.m
//  DesignModeDemo
//
//  Created by koala on 2018/4/13.
//  Copyright © 2018年 koala. All rights reserved.
//

#import "BridgePatternViewController.h"
#import "DirectionRemote.h"
#import "TemperatureRemote.h"
#import "HaierAirConditioner.h"
#import "GeliAirConditioner.h"

@interface BridgePatternViewController ()

@end

@implementation BridgePatternViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
     桥接模式的特点:
     1. 将依赖具体的实现,改为依赖抽象. 得到松耦合的状态
     2. 分离了接口和实现部分
     3. 提高了扩展性.
     
     
     Ps:热空气上升冷空气下降,所以热风朝下吹
     */
    
  
    //海尔空调
    HaierAirConditioner *haierAirConditioner =  [[HaierAirConditioner alloc] init];
    
    //控制风向
    DirectionRemote *directionRemote = [[DirectionRemote alloc] init];
    //让海尔空调往上吹风
    directionRemote.airConditioner = haierAirConditioner;
    [directionRemote up];
    
    //控制温度
    TemperatureRemote *temperatureRemote = [[TemperatureRemote alloc] init];
    //让海尔空调更冷
    temperatureRemote.airConditioner = haierAirConditioner;
    [temperatureRemote colder];
    
    //=====================================================================================
    
    //让格力空调往下吹热风
    GeliAirConditioner *geliAirConditioner =  [[GeliAirConditioner alloc] init];
    directionRemote.airConditioner = geliAirConditioner;
    [directionRemote down];
    temperatureRemote.airConditioner = geliAirConditioner;
    [temperatureRemote warmer];

    
    
}



@end
