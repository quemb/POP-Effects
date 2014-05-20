
//
//  CALayer+POPEffects.m
//  POP+Effects-Sample
//
//  Created by Toni Möckel on 21.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import "CALayer+POPEffects.h"

#import <POP/POP.h>

@implementation CALayer (POPEffects)


- (POPBasicAnimation *)fadeOut {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerOpacity];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = @(1.0);
    anim.toValue = @(0.0);
    [self pop_addAnimation:anim forKey:@"fadeOut"];
    return anim;
}


- (POPBasicAnimation *)zoomOut {
    
    POPBasicAnimation *anim = [POPBasicAnimation animationWithPropertyNamed:kPOPLayerZPosition];
    anim.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    anim.fromValue = @(self.zPosition);
    anim.toValue = @(-500);
    [self pop_addAnimation:anim forKey:@"zoomOut"];
    return anim;
}

@end
