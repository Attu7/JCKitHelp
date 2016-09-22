//
//  JCTabBarTwoViewController.m
//  JCKitHelp
//
//  Created by 贾淼 on 16/9/22.
//  Copyright © 2016年 Jam. All rights reserved.
//

#import "JCTabBarTwoViewController.h"
#import "UITabBarItem+Universal.h"

@interface JCTabBarTwoViewController ()

@end

@implementation JCTabBarTwoViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        self.tabBarItem = [UITabBarItem itemWithTitle:nil image:[UIImage imageNamed:@"faxian2"] selectedImage:[UIImage imageNamed:@"faxian"]];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
