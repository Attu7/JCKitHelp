//
//  JCTranition.m
//  JCKitHelp
//
//  Created by 贾淼 on 16/9/27.
//  Copyright © 2016年 Jam. All rights reserved.
//

#import "JCTranition.h"

@implementation JCTranition

- (NSTimeInterval)transitionDuration:(nullable id <UIViewControllerContextTransitioning>)transitionContext {
    return 3.0f;
}

- (void)animateTransition:(id <UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *fromViewController = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    UIViewController *toViewController = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    CGRect finalFrameForVC = [transitionContext finalFrameForViewController:toViewController];
    CGRect bounds = [[UIScreen mainScreen] bounds];
    
    toViewController.view.frame = CGRectOffset(finalFrameForVC, 0, bounds.size.height);
    [[transitionContext containerView] addSubview:toViewController.view];
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] delay:0.3f usingSpringWithDamping:0.5 initialSpringVelocity:0.0 options:UIViewAnimationOptionCurveLinear animations:^{
        fromViewController.view.alpha = 0.8f;
        toViewController.view.frame = finalFrameForVC;
    } completion:^(BOOL finished){
        [transitionContext completeTransition:YES];
        fromViewController.view.alpha = 1.0f;
    }];
}

@end
