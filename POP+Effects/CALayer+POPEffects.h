//
//  CALayer+POPEffects.h
//  POP+Effects-Sample
//
//  Created by Toni Möckel on 21.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
@class POPBasicAnimation;

@interface CALayer (POPEffects)


- (POPBasicAnimation *) fadeOut;

- (POPBasicAnimation *) zoomOut;

@end
