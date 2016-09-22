//
//  UITabBarItem+Universal.m
//  wtz
//
//  Created by 贾淼 on 15-1-8.
//  Copyright (c) 2015年 milestone. All rights reserved.
//

#import "UITabBarItem+Universal.h"

@implementation UITabBarItem (Universal)

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage
{
    CGFloat padding = 7.f;
    
    UIImage *normalImage     = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *selectImage     = [selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:normalImage selectedImage:selectImage];
    [tabBarItem setImageInsets:UIEdgeInsetsMake(padding, 0, -padding, 0)];
    return tabBarItem;
}

@end