//
//  CustomBarItemUtility.h
//  HaoZu
//
//  Created by Jam on 1/5/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomBarItemUtility : NSObject

+ (UIBarButtonItem *)createBackItemWithTarget:(id)target action:(SEL)action;
+ (UIBarButtonItem *)createBarButtonWithImage:(UIImage *)image target:(id)target action:(SEL)action;
+ (UIBarButtonItem *)createBackBarButtonWithText:(NSString *)text target:(id)target action:(SEL)action;

@end