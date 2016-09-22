//
//  JCViewController.m
//  JCKitHelp
//
//  Created by 贾淼 on 16/9/22.
//  Copyright © 2016年 Jam. All rights reserved.
//

#import "JCTabBarViewController.h"

@interface JCTabBarViewController ()

@property (nonatomic, assign) NSInteger selectIndex;

@end

@implementation JCTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setTabBarControllers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setTabBarControllers
{
    UIStoryboard *homeSB = [UIStoryboard storyboardWithName:@"TabBarDemo" bundle:nil];
    UIViewController *one = [homeSB instantiateViewControllerWithIdentifier:@"One"];
    UIViewController *two = [homeSB instantiateViewControllerWithIdentifier:@"Two"];

    self.viewControllers = @[one, two];
}

#pragma mark TabBarDelegate

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    NSInteger index = [self.tabBar.items indexOfObject:item];
    
    if (self.selectIndex != index) {
        [self animationWithIndex:index];
    }
}

#pragma mark animation

- (void)animationWithIndex:(NSInteger) index {
    NSMutableArray * tabbarbuttonArray = [NSMutableArray array];
    for (UIView *tabBarButton in self.tabBar.subviews) {
        if ([tabBarButton isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            [tabbarbuttonArray addObject:tabBarButton];
        }
    }
    CABasicAnimation*pulse = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    pulse.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    pulse.duration = 0.15;
    pulse.repeatCount = 1;
    pulse.autoreverses = YES;
    pulse.fromValue = [NSNumber numberWithFloat:0.7];
    pulse.toValue = [NSNumber numberWithFloat:1.3];
    [[tabbarbuttonArray[index] layer] addAnimation:pulse forKey:nil];
    
    self.selectIndex = index;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
