//
//  UITableView+JCPlaceHoldView.m
//  ShowYou
//
//  Created by seris-Jam on 16/7/6.
//  Copyright © 2016年 soppysonny. All rights reserved.
//

#import "UITableView+JCPlaceHoldView.h"

@implementation UITableView (JCPlaceHoldView)

- (void)showPlaceHoldView:(UIView *)placeHoldView inTableViewCount:(NSInteger)tableViewCount {
    if (tableViewCount == 0) {
        self.backgroundView = placeHoldView;
        self.scrollEnabled = NO;
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
    } else {
        self.backgroundView = nil;
        self.scrollEnabled = YES;
        self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    }
}

- (void)showPlaceHoldView:(UIView *)placeHoldView {
    self.backgroundView = placeHoldView;
    self.scrollEnabled = NO;
    self.separatorStyle = UITableViewCellSeparatorStyleNone;
}

- (void)hiddenPlaceHoldView {
    self.backgroundView = nil;
    self.scrollEnabled = YES;
    self.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
}

@end
