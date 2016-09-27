//
//  CALayer+Additions.m
//  ShowYou
//
//  Created by seris-Jam on 16/7/11.
//  Copyright © 2016年 soppysonny. All rights reserved.
//

#import "CALayer+Additions.h"

@implementation CALayer (Additions)

/**
 *  @author Jam, 16-09-22 22:09:54
 *
 *  StoryBoard xib runtimeAttbuties help 设置边框颜色等
 *
 *  @param color <#color description#>
 */

- (void)setBorderColorFromUIColor:(UIColor *)color {
    self.borderColor = color.CGColor;
}

@end
