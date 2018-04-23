//
//  MementoProtocol.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MementoProtocol <NSObject>

- (id)currentState; /**<  获取状态 */

- (void)recoverFromState:(id)state; /**<  恢复状态 */

@end
