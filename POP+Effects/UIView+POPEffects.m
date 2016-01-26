//
//  UIView+POPEffects.m
//  Pods
//
//  Created by Toni Möckel on 07.07.14.
//
//

#import "UIView+POPEffects.h"
#import <objc/runtime.h>
#import <POP/POP.h>
#import "PopAnimationDelegate.h"

static void * TempDelegateKey = &TempDelegateKey;

@implementation UIView (POPEffects)

@dynamic tempDelegate;

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


- (POPSpringAnimation *)bounce {
    
    return [self bounceWithSpeed:1.0f bounciness:10.0f];
    
}

- (POPSpringAnimation *)bounceWithSpeed:(CGFloat)speed bounciness:(CGFloat)bounciness {
    
    self.tempDelegate = [[PopAnimationDelegate alloc] initWithStartCallback:^void(POPAnimation *animation) {
        
    } stop:^void(POPAnimation *animation) {
        
        POPSpringAnimation *anim = [POPSpringAnimation animation];
        anim.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
        anim.fromValue = [NSValue valueWithCGPoint:CGPointMake(1.2f, 1.2f)];
        anim.toValue = [NSValue valueWithCGPoint:CGPointMake(1.0f, 1.0f)];
        anim.springBounciness = bounciness;
        anim.springSpeed = speed;
        [self pop_addAnimation:anim forKey:@"bounce"];
        
    } reachValue:nil];
    
    POPSpringAnimation *animation = [POPSpringAnimation animation];
    animation.property = [POPAnimatableProperty propertyWithName:kPOPViewScaleXY];
    animation.fromValue = [NSValue valueWithCGPoint:CGPointMake(1.0f, 1.0f)];
    animation.toValue = [NSValue valueWithCGPoint:CGPointMake(1.2f, 1.2f)];
    animation.delegate = self.tempDelegate;
    [self pop_addAnimation:animation forKey:@"fadeIn"];

    
   
    return animation;
    
}

- (id)tempDelegate {
    return objc_getAssociatedObject(self, TempDelegateKey);
}

- (void)setTempDelegate:(id)tempDelegate {
    objc_setAssociatedObject(self, TempDelegateKey, tempDelegate, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
