//
//  UIView+POPEffects.h
//  Pods
//
//  Created by Toni Möckel on 07.07.14.
//
//

#import <QuartzCore/QuartzCore.h>
@class POPBasicAnimation;

#import <UIKit/UIKit.h>

@interface UIView (POPEffects)


- (POPBasicAnimation *) fadeIn;
- (POPBasicAnimation *) fadeOut;

@end
