//
//  FacadeCar.h
//  DesignModeDemo
//
//  Created by koala on 2018/4/23.
//  Copyright © 2018年 koala. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FacadeCar : NSObject

- (void)releaseBrakes; /**< 松刹车 */

- (void)pressBrakes; /**< 踩刹车 */

- (void)pressAccelerator; /**< 踩油门 */

- (void)releaseAccelerator; /**< 松油门 */

@end
