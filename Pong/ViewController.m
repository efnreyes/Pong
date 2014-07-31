//
//  ViewController.m
//  Pong
//
//  Created by Efrén Reyes Torres on 7/31/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "BallView.h"
#import "PaddleView.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UIView *ballView;
@property (strong, nonatomic) IBOutlet UIView *paddleView;
@property UIDynamicAnimator *dynamicAnimator;
@property UIPushBehavior *pushBehavior;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.dynamicAnimator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    self.pushBehavior = [[UIPushBehavior alloc] initWithItems:@[self.ballView] mode:UIPushBehaviorModeInstantaneous];

    self.pushBehavior.pushDirection = CGVectorMake(-0.5, -1.0);
    self.pushBehavior.active = YES;
    self.pushBehavior.magnitude = 0.3;
    [self.dynamicAnimator addBehavior:self.pushBehavior];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
