
/*
 比如：
 我们想要一辆车，在VC中我们不管如何实现的，最后给我车就OK。
 */


#import "BuilderViewController.h"
#import "Director.h"
#import "CarCompanyBuilder.h"

@interface BuilderViewController ()

@end

@implementation BuilderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //第一种构建方式
    id<CarBuilder> build = [[CarCompanyBuilder alloc] init];

    Director *director = [[Director alloc] initWithBuilder:build];
    
    id<CarCompanyProtocol> car = [director constructWithBody:@"法拉利F1车身" andEngine:@"8缸发动机" andTyre:@"华勤轮胎"];
    
    NSLog(@"car1 = %@",car);

    
    //第二种构建方式
    id<CarBuilder> build2 = [[CarCompanyBuilder alloc] init];
    
    id<CarCompanyProtocol> car2 = [[[[build2 buildCarBody:@"五菱宏光"] buildEngine:@"4缸发动机"] buildTyre:@"防滑轮胎"] getCar];
    
    NSLog(@"car2 = %@",car2);
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

