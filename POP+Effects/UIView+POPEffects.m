//
//  UIView+POPEffects.m
//  Pods
//
//  Created by Toni Möckel on 07.07.14.
//
//

#import "UIView+POPEffects.h"

#import <POP/POP.h>

@implementation UIView (POPEffects)



- (POPBasicAnimation *)fadeIn {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = @(100.0);
    [self pop_addAnimation:anim forKey:@"fadeIn"];
    return anim;
}

- (POPBasicAnimation *)fadeOut {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPViewAlpha];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = @(0.0);
    [self pop_addAnimation:anim forKey:@"fadeOut"];
    return anim;
    
}


@end
