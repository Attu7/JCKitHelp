//
//  UICollectionView+JCPlaceHoldView.m
//  ShowYou
//
//  Created by seris-Jam on 16/7/6.
//  Copyright © 2016年 soppysonny. All rights reserved.
//

#import "UICollectionView+JCPlaceHoldView.h"

@implementation UICollectionView (JCPlaceHoldView)

- (void)showPlaceHoldView:(UIView *)placeHoldView inCollectionViewCount:(NSInteger)collectionViewCount {
    if (collectionViewCount == 0) {
        self.backgroundView = placeHoldView;
    } else {
        self.backgroundView = nil;
    }
}

- (void)showPlaceHoldView:(UIView *)placeHoldView {
    self.backgroundView = placeHoldView;
}

- (void)hiddenPlaceHoldView {
    self.backgroundView = nil;
}

@end
