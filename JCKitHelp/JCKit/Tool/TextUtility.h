//
//  TextUtil.h
//  Anjuke
//
//  Created by Jam on 11-7-18.
//  Copyright 2011年 anjuke. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 通用字符处理类
 */
@interface TextUtility : NSObject {
    
}
+ (BOOL)isLegalEmail:(NSString *)email;
+ (BOOL)isNumber:(NSString *)input;
+ (BOOL)isLegalPhone:(NSString *)input;
+ (BOOL)isLegalPassword:(NSString *)input;
+ (BOOL)isSpaceAll:(NSString *)input;
+ (BOOL)isLegalUrl:(NSString *)input;

@end