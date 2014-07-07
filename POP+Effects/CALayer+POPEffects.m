
//
//  CALayer+POPEffects.m
//  POP+Effects-Sample
//
//  Created by Toni Möckel on 21.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import "CALayer+POPEffects.h"

#import <POP/POP.h>

float const kPOPEffectZoomOutToValue = 3.0f;

@implementation CALayer (POPEffects)

- (POPBasicAnimation *)fadeIn {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = @(100.0);
    [self pop_addAnimation:anim forKey:@"fadeIn"];
    return anim;
}

- (POPBasicAnimation *)fadeOut {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = @(0.0);
    [self pop_addAnimation:anim forKey:@"fadeOut"];
    return anim;
    
}


- (POPBasicAnimation *)zoomOut {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerScaleXY];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.toValue = [NSValue valueWithCGSize:CGSizeMake(kPOPEffectZoomOutToValue, kPOPEffectZoomOutToValue)];
    [self pop_addAnimation:anim forKey:@"zoomOut"];
    [self fadeOut];
    return anim;
    
}

@end
