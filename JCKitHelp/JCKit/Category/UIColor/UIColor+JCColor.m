//
//  UIColor+JCColor.m
//  JCFindHouse
//
//  Created by Jam on 14-10-23.
//  Copyright (c) 2014年 Hannover. All rights reserved.
//

#import "UIColor+JCColor.h"

@implementation UIColor (JCColor)

- (BOOL)isTheSameColor:(UIColor*)color
{
    CGFloat redValue, greenValue, blueValue, alphaValue;
    CGFloat desRedValue, desGreenValue, desBlueValue, desAlphaValue;
    
    if ([color getRed:&redValue green:&greenValue blue:&blueValue alpha:&alphaValue] && [self getRed:&desRedValue green:&desGreenValue blue:&desBlueValue alpha:&desAlphaValue])
    {
        if (redValue == desRedValue && greenValue == desGreenValue && blueValue == desBlueValue && alphaValue == desAlphaValue) {
            return YES;
        }
    }
    
    return NO;
}

@end
