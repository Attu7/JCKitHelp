//
//  UIDevice+Unidentifier.h
//  JC139house
//
//  Created by Jam on 13-4-16.
//  Copyright (c) 2013年 Jam. All rights reserved.
//

#include <sys/socket.h>
#include <sys/sysctl.h>
#include <net/if.h>
#include <net/if_dl.h>
#import <UIKit/UIKit.h>

@interface UIDevice (Unidentifier)

- (NSString *)macAddress;

@end
