//
//  MYDeviceInfo.m
//  MYCloud
//
//  Created by 陈伟南 on 16/3/4.
//  Copyright © 2016年 Jam. All rights reserved.
//

#import "JCDeviceInfo.h"
#import "SSKeychain.h"

@implementation JCDeviceInfo

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}


+ (NSString *)getDeviceName{
    NSString *deviceName = [[UIDevice currentDevice] name];
    return deviceName;
}

+ (NSString *)getSystemName{
    NSString *systemName = [[UIDevice currentDevice] systemName];
    return systemName;

}

+ (NSString *)getSystemVersion{
    NSString *systemVersion = [[UIDevice currentDevice] systemVersion];
    return systemVersion;
}

+ (NSString *)getSystemModel{
    NSString *systemModel = [[UIDevice currentDevice] model];
    return systemModel;
}

+ (NSString *)getLocalModel{
    NSString *localModel = [[UIDevice currentDevice] localizedModel];;
    return localModel;
}

+ (NSString *)getIMEI{
    NSString *identifier = [[NSBundle mainBundle] bundleIdentifier];
    NSString *retrieveuuid = [SSKeychain passwordForService:identifier account:@"uuid"];
    if (retrieveuuid == nil || [retrieveuuid isEqualToString:@""]){
        CFUUIDRef uuid = CFUUIDCreate(NULL);
        assert(uuid != NULL);
        CFStringRef uuidStr = CFUUIDCreateString(NULL, uuid);
        retrieveuuid = [NSString stringWithFormat:@"%@", uuidStr];
        [SSKeychain setPassword: retrieveuuid forService:identifier account:@"uuid"];
    }
    return retrieveuuid;
}

+ (UIDeviceOrientation )getCurrentOrientation{
    UIDeviceOrientation orientation = [[UIDevice currentDevice]orientation];
    return orientation;
}

+ (BOOL)isGeneratingDeviceOrientationNotifications{
    BOOL isGeneratingDeviceOrientationNotifications = [[UIDevice currentDevice]isGeneratingDeviceOrientationNotifications];
    return isGeneratingDeviceOrientationNotifications;
}

+ (void)beginGeneratingDeviceOrientationNotifications{
    [[UIDevice currentDevice]beginGeneratingDeviceOrientationNotifications];
}

+ (void)endGeneratingDeviceOrientationNotifications{
    [[UIDevice currentDevice]endGeneratingDeviceOrientationNotifications];
}

+ (BOOL)isBatteryMonitoringEnable{
    BOOL isBatteryMonitoringEnable = [[UIDevice currentDevice]isBatteryMonitoringEnabled];
    return isBatteryMonitoringEnable;
}

+ (UIDeviceBatteryState)getCurrentBatteryState{
    UIDeviceBatteryState batteryState = [[UIDevice currentDevice]batteryState];
    return batteryState;
}

+ (CGFloat)getCurrentBatteryLevel{
    CGFloat currentBatteryLevel = [[UIDevice currentDevice]batteryLevel];
    return currentBatteryLevel;
}

+ (BOOL)ProximityState{
    BOOL proximityState = [[UIDevice currentDevice]proximityState];
    return proximityState;
}

+ (BOOL)isProximityMonitoringEnable{
    BOOL isProximityMonitoringEnable = [[UIDevice currentDevice]isProximityMonitoringEnabled];
    return isProximityMonitoringEnable;
}

+ (BOOL)isMultitaskingSupported{
    BOOL isMUltitaskingSupported = [[UIDevice currentDevice]isMultitaskingSupported];
    return isMUltitaskingSupported;
}

+ (UIUserInterfaceIdiom)currentUserInterfaceIdiom{
    UIUserInterfaceIdiom idiom = [[UIDevice currentDevice]userInterfaceIdiom];
    return idiom;
}

+ (NSString *)getScreenSize {
    //屏幕尺寸
    CGRect rect = [[UIScreen mainScreen] bounds];
    CGSize size = rect.size;
    CGFloat width = size.width;
    CGFloat height = size.height;
    
    //分辨率
    CGFloat scale_screen = [UIScreen mainScreen].scale;
    NSString *screenSize = [NSString stringWithFormat:@"%f*%f", width*scale_screen, height*scale_screen];
    return screenSize;
}

+ (NSString *)getPackageName {
    NSDictionary *infoDictionary =[[NSBundle mainBundle]infoDictionary];
   // 应用程序名
    return [infoDictionary objectForKey:@"CFBundleDisplayName"];
}

+ (NSString *)getPackageVersionName {
    
    NSString *versionStr = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    NSArray *versions = [versionStr componentsSeparatedByString:@"."];
    NSMutableString * totalStr = [NSMutableString string];
    for (NSString *str in versions) {
        [totalStr appendString:str];
    }
    //版本号
    return totalStr;
}

//Add To

+ (NSString *)currentLanguage {
    NSArray *languages = [NSLocale preferredLanguages];
    NSString *currentLanguage = [languages objectAtIndex:0];
    
    //    NSRange rangeof = [currentLanguage rangeOfString:@"-"];
    NSString* lantype = [currentLanguage substringWithRange:NSMakeRange(0, 2)];
    if ([lantype isEqualToString:@"en"]) {
        lantype = @"vi";
    }
    return lantype;
}

@end
