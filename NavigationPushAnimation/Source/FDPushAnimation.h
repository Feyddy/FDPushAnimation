//
//  FDPushAnimation.h
//  NavigationPushAnimation
//
//  Created by 徐忠林 on 11/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**timingFunctionName
 
 CA_EXTERN NSString * const kCAMediaTimingFunctionLinear
 __OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
 CA_EXTERN NSString * const kCAMediaTimingFunctionEaseIn
 __OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
 CA_EXTERN NSString * const kCAMediaTimingFunctionEaseOut
 __OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
 CA_EXTERN NSString * const kCAMediaTimingFunctionEaseInEaseOut
 __OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
 CA_EXTERN NSString * const kCAMediaTimingFunctionDefault
 __OSX_AVAILABLE_STARTING (__MAC_10_6, __IPHONE_3_0);
 
 */




/* Common transition types.

CA_EXTERN NSString * const kCATransitionFade
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
CA_EXTERN NSString * const kCATransitionMoveIn
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
CA_EXTERN NSString * const kCATransitionPush
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
CA_EXTERN NSString * const kCATransitionReveal
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
*/

/**Transition types扩展
 
 animation.type = @"cube";//立方体翻转
 
 animation.type = @"suckEffect";//左上角吮吸动画
 
 animation.type = @"oglFlip"; // 页面旋转
 
 animation.type = @"rippleEffect"; //水波纹
 
 animation.type = @"pageCurl";//左翻页
 
 animation.type = @"pageUnCurl";//右翻页
 
 animation.type = @"cameraIrisHollowOpen";//页面螺旋打开
 
 animation.type = @"cameraIrisHollowClose";//页面螺旋关闭
 */


/* Common transition subtypes.

CA_EXTERN NSString * const kCATransitionFromRight
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
CA_EXTERN NSString * const kCATransitionFromLeft
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
CA_EXTERN NSString * const kCATransitionFromTop
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
CA_EXTERN NSString * const kCATransitionFromBottom
__OSX_AVAILABLE_STARTING (__MAC_10_5, __IPHONE_2_0);
*/


@interface FDPushAnimation : NSObject

+ (CATransition*)pushAnimationWithDuration:(CFTimeInterval)duration  withTimingFunction:(NSString *)timingFunctionName withType:(NSString *)type withSubType:(NSString *)subType withDelegate:(id)delegate;

@end
