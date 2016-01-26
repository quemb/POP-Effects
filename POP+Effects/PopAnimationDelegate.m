//
//  PopAnimationDelegate.m
//  POP+Effects-Sample
//
//  Created by Toni Möckel on 26.01.16.
//  Copyright © 2016 Toni Möckel. All rights reserved.
//

#import "PopAnimationDelegate.h"


@interface PopAnimationDelegate()

@property(readwrite, copy) AnmiationCallback start;
@property(readwrite, copy) AnmiationCallback stop;
@property(readwrite, copy) AnmiationCallback reachValue;

@end

@implementation PopAnimationDelegate

- (id)initWithStartCallback:(AnmiationCallback)start stop:(AnmiationCallback)stop reachValue:(AnmiationCallback)reachValue {
    
    self = [super init];
    
    if (self){
        self.start = start;
        self.stop = stop;
        self.reachValue = reachValue;
    }
    
    return self;
    
}

- (void)pop_animationDidStart:(POPAnimation *)anim {
    if (self.start){
        self.start(anim);
    }
}

- (void)pop_animationDidStop:(POPAnimation *)anim finished:(BOOL)finished {
    if (self.stop){
        self.stop(anim);
    }
}

@end
