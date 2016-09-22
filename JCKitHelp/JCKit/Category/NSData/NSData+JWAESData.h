//
//  NSData+JWAESData.h
//  ShowYou
//
//  Created by 黑牛 on 16/5/13.
//  Copyright © 2016年 soppysonny. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (JWAESData)
- (NSData *)aes256_encrypt:(NSString *)key;
- (NSData *)aes256_decrypt:(NSString *)key;
@end
