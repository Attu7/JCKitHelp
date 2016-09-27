//
//  CustomBarItemUtility.m
//  HaoZu
//
//  Created by Jam on 1/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "CustomBarItemUtility.h"
#import "UIView+JCView.h"

@implementation CustomBarItemUtility

+ (UIBarButtonItem *)createBackItemWithTarget:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 44.0, 44.0)];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[[UIImage imageNamed:@"item_back"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 30, 0, 0)] forState:UIControlStateNormal];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0.0, 0.0, 0.0, 0.0)];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+ (UIBarButtonItem *)createBarButtonWithImage:(UIImage *)image target:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:CGRectMake(0, 0, 30.0, 30.0)];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setImage:image forState:UIControlStateNormal];
    [button setImageEdgeInsets:UIEdgeInsetsMake(0.0, -25.0f, 0.0, 0.0)];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

+ (UIBarButtonItem *)createBackBarButtonWithText:(NSString *)text target:(id)target action:(SEL)action {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = [UIFont systemFontOfSize:16.0];
    //CGSize textSize = [text sizeWithFont:button.titleLabel.font];
    CGSize textSize = [text sizeWithAttributes:@{NSFontAttributeName:button.titleLabel.font}];
    [button setFrame:CGRectMake(0, 0, textSize.width + 20.0, 30.0)];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:text forState:UIControlStateNormal];
    [button setTitleEdgeInsets:UIEdgeInsetsMake(0.0, -25.0f, 0.0, 0.0)];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
}

@end
