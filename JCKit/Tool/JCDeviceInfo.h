//
//  MYDeviceInfo.h
//  MYCloud
//
//  Created by Jam on 16/3/4.
//  Copyright © 2016年 Jam. All rights reserved.
//
#import <SystemConfiguration/CaptiveNetwork.h>
#import <Foundation/Foundation.h>

@interface JCDeviceInfo : NSObject

+ (NSString *)getDeviceName;//设备名称

+ (NSString *)getSystemName;//系统名称

+ (NSString *)getSystemVersion;//系统版本号

+ (NSString *)getSystemModel;//设备模式

+ (NSString *)getLocalModel;//本地设备模式

+ (NSString *)getIMEI;//通用唯一标识码

+ (BOOL)isGeneratingDeviceOrientationNotifications;//是否生成设备转向通知
+ (UIDeviceOrientation)getCurrentOrientation;//设备当前旋转方向, 除非正在生成设备方向的通知，否则返回UIDeviceOrientationUnknown
+ (void)beginGeneratingDeviceOrientationNotifications;//开始设备转向通知
+ (void)endGeneratingDeviceOrientationNotifications;//结束设备转向通知

+ (BOOL)isBatteryMonitoringEnable; //是否启动电池控制，默认为no
+ (UIDeviceBatteryState)getCurrentBatteryState;//设备当前的电池状态，除非启动了电池监控，否则为UIDeviceBatteryStateUnknwn
+ (CGFloat)getCurrentBatteryLevel;//电池百分比,0 ..1.0，如果电池状态为UIDeviceBatteryStateUnknown，则百分比为-1.0

+ (BOOL)ProximityState; //是否具备接近感应器，不具备一直返回NO
+ (BOOL)isProximityMonitoringEnable;//是否启动接近监控（例如接电话时脸靠近屏幕），默认为NO

+ (BOOL)isMultitaskingSupported;//是否支持多任务

+ (UIUserInterfaceIdiom)currentUserInterfaceIdiom;//当前用户界面模式

+ (NSString *)getScreenSize;      //屏幕分辨率

+ (NSString *)getPackageName;     //包名

+ (NSString *)getPackageVersionName;   //版本号

//Add To
+ (NSString *)currentLanguage;

@end
