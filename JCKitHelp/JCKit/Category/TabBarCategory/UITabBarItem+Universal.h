//
//  UITabBarItem+Universal.h
//  wtz
//
//  Created by 贾淼 on 15-1-8.
//  Copyright (c) 2015年 milestone. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITabBarItem (Universal)

+ (instancetype)itemWithTitle:(NSString *)title image:(UIImage *)image selectedImage:(UIImage *)selectedImage;

@end
