//
//  FDPushAnimation.m
//  NavigationPushAnimation
//
//  Created by 徐忠林 on 11/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "FDPushAnimation.h"

@implementation FDPushAnimation

+ (CATransition*)pushAnimationWithDuration:(CFTimeInterval)duration  withTimingFunction:(NSString *)timingFunctionName withType:(NSString *)type withSubType:(NSString *)subType withDelegate:(id)delegate
{
    CATransition *transition = [CATransition animation];
    transition.duration = duration;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:timingFunctionName];
    transition.type = type;
    transition.subtype = subType;
    transition.delegate = delegate;
    return transition;
}

@end
