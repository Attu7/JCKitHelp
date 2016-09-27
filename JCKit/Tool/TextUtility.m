//
//  TextUtil.m
//  Anjuke
//
//  Created by Jam on 11-7-18.
//  Copyright 2011年 anjuke. All rights reserved.
//

#import "TextUtility.h"
#import "regex.h"

@implementation TextUtility

//正则验证Email
+ (BOOL)isLegalEmail:(NSString *)email{
	NSString *regex = @"\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*";
	NSPredicate *emailPred = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",regex];
	return [emailPred evaluateWithObject:email];
}
//字符串是否为纯数字
+ (BOOL)isNumber:(NSString *)input{
	char *word = (char *)[input UTF8String];
	int len = strlen(word);
	for (int j=0; j < len; j ++) {
		if (word[j]<48 || word[j]>57) {
			return NO;
		}
	}
	return YES;
}
// c语言的正则表达式验证方法
+ (BOOL)isRegexMatch:(NSString *)input regPattern:(NSString *)pattern {
	regex_t reg;
	int status = regcomp(&reg, [pattern UTF8String], REG_NOSUB | REG_EXTENDED | REG_ICASE);
	if (status) {
		return NO;
	}
	status = regexec(&reg, [input UTF8String], 0, NULL, 0);
	if (status == REG_NOMATCH) {
		return NO;
	}
	else if (status == 0) {
		return YES;
	}
	
	regfree(&reg);
	
	return NO;
}

//是否为合法手机号码
+ (BOOL)isLegalPhone:(NSString *)input {
    NSString *pattern = @"^13[0-9]{1}[0-9]{8}$|14[0-9]{1}[0-9]{8}$|15[0-9]{1}[0-9]{8}$|17[0-9]{1}[0-9]{8}$|18[0-9]{1}[0-9]{8}$";
    if (input == nil) {
        return NO;
    }
    return [self isRegexMatch:input regPattern:pattern];
}

+ (BOOL)isLegalPassword:(NSString *)input
{
    NSString *pattern = @"^[a-zA-Z0-9/~!@#$%^&()_+|{},:\"<>?*]{4,16}$";
    
    if (input == nil) {
        return NO;
    }
    
    return [self isRegexMatch:input regPattern:pattern];
}

+ (BOOL)isLegalUrl:(NSString *)input
{
    NSString *pattern = @"[\u4e00-\u9fa5]+";
	
	return [self isRegexMatch:input regPattern:pattern];
}

+ (BOOL)isSpaceAll:(NSString *)input
{
    NSString *pattern = @"^ +$";
	
	return [self isRegexMatch:input regPattern:pattern];
}

@end
