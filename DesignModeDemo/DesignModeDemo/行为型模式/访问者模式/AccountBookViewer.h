//
//  AccountBookViewer.h
//  行为型设计模式-访问者模式
//
//  Created by 温杰 on 2018/4/11.
//  Copyright © 2018年 温杰. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IncomeBill,ConsumeBill;
@protocol AccountBookViewer <NSObject>
-(void)lookIncomBill:(IncomeBill*)incomeBill;
-(void)lookConsumeBill:(ConsumeBill *)consumeBill;
@end
