//
//  NSDictionary+ExtraMethod.m
//  MYCloud
//
//  Created by Jam on 15/12/2.
//  Copyright © 2015年 Jam. All rights reserved.
//

#import "NSDictionary+ExtraMethod.h"

@implementation NSDictionary (ExtraMethod)

- (id)objectSafetyForKey:(NSString *)key {
    if ([[self objectForKey:key] isKindOfClass:[NSNull class]]) {
        return nil;
    }
    
    return [self objectForKey:key];
}

@end
