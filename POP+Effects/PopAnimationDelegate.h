//
//  PopAnimationDelegate.h
//  POP+Effects-Sample
//
//  Created by Toni Möckel on 26.01.16.
//  Copyright © 2016 Toni Möckel. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <POP/POP.h>


typedef void (^AnmiationCallback)(POPAnimation *animation);

@interface PopAnimationDelegate : NSObject<POPAnimationDelegate>




- (id) initWithStartCallback:(AnmiationCallback)start
                        stop:(AnmiationCallback)stop
                  reachValue:(AnmiationCallback)reachValue;


@end
