//
//  UITableView+JCPlaceHoldView.h
//  ShowYou
//
//  Created by seris-Jam on 16/7/6.
//  Copyright © 2016年 soppysonny. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableView (JCPlaceHoldView)

- (void)showPlaceHoldView:(UIView *)placeHoldView inTableViewCount:(NSInteger)tableViewCount;

- (void)showPlaceHoldView:(UIView *)placeHoldView;
- (void)hiddenPlaceHoldView;

@end