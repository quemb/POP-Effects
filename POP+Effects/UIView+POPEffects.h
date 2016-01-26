//
//  UIView+POPEffects.h
//  Pods
//
//  Created by Toni Möckel on 07.07.14.
//
//

#import <QuartzCore/QuartzCore.h>
@class POPBasicAnimation;
@class POPSpringAnimation;

#import <UIKit/UIKit.h>

@interface UIView (POPEffects)

@property (nonatomic) id tempDelegate;


- (POPBasicAnimation *) fadeIn;
- (POPBasicAnimation *) fadeOut;
- (POPSpringAnimation *) bounce;

@end
