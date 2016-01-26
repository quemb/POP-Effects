//
//  ViewController.m
//  POP+Effects-Sample
//
//  Created by Toni Möckel on 21.05.14.
//  Copyright (c) 2014 Toni Möckel. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    [_fadeOutLabel fadeOut];
    [_zoomOutLabel.layer zoomOut];
    [_bounceLabel bounce];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
