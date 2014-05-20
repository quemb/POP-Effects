//
//  ViewController.h
//  POP+Effects-Sample
//
//  Created by Toni Möckel on 21.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CALayer+POPEffects.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *fadeOutLabel;
@property (weak, nonatomic) IBOutlet UILabel *zoomOutLabel;

@end
