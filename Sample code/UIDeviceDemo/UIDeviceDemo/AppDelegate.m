//
//  AppDelegate.m
//  UIDeviceDemo
//
//  Created by Brian Wang on 2015/8/20.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    UIDevice *device = [UIDevice currentDevice];
    
    // 是否支援多功
    NSLog(@"multitaskingSupported=%d", device.multitaskingSupported);
    // 設備名稱
    NSLog(@"name=%@", device.name);
    // 作業系統名稱
    NSLog(@"systemName=%@", device.systemName);
    // 作業系統版本
    NSLog(@"systemVersion=%@", device.systemVersion);
    // 設備的型號
    NSLog(@"model=%@", device.model);
    // 設備的型號 (以本土化訊息顯示)
    NSLog(@"localizedModel=%@", device.localizedModel);
    // 用來取得目前設備的介面形式
    switch (device.userInterfaceIdiom) {
        case UIUserInterfaceIdiomPad:
            NSLog(@"userInterfaceIdiom=iPad");
            break;
        case UIUserInterfaceIdiomPhone:
            NSLog(@"userInterfaceIdiom=iPhone");
            break;
    }
    // 設備的方向
    switch (device.orientation) {
        case UIDeviceOrientationUnknown:
            NSLog(@"UIDeviceOrientationUnknown 未知方向");
            break;
        case UIDeviceOrientationPortrait:
            NSLog(@"UIDeviceOrientationPortrait 肖像模式 (一般手持 iPhone 模式)");
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            NSLog(@"UIDeviceOrientationPortraitUpsideDown 上下顛倒的肖像模式");
            break;
        case UIDeviceOrientationLandscapeLeft:
            NSLog(@"UIDeviceOrientationLandscapeLeft 手機往左旋轉的風景模式");
            break;
        case UIDeviceOrientationLandscapeRight:
            NSLog(@"UIDeviceOrientationLandscapeRight 手機往右旋轉的風景模式");
            break;
        case UIDeviceOrientationFaceUp:
            NSLog(@"UIDeviceOrientationFaceUp 手機平放且面朝上");
            break;
        case UIDeviceOrientationFaceDown:
            NSLog(@"UIDeviceOrientationFaceDown 手機平放且面朝下");
            break;
    }
    // 開啟或關閉電池的監控
    NSLog(@"batteryMonitoringEnable=%d", device.batteryMonitoringEnabled);
    device.batteryMonitoringEnabled = YES;
    // 電池充電狀況
    NSLog(@"batteryLevel=%f", device.batteryLevel);
    // 顯示電池的狀態
    switch (device.batteryState) {
        case UIDeviceBatteryStateUnknown:
            NSLog(@"UIDeviceBatteryStateUnknown 未知狀態");
            break;
        case UIDeviceBatteryStateUnplugged:
            NSLog(@"UIDeviceBatteryStateUnplugged 電池未充電，連結線已移除");
            break;
        case UIDeviceBatteryStateCharging:
            NSLog(@"UIDeviceBatteryStateCharging 電池充電中，電量少於 100%");
            break;
        case UIDeviceBatteryStateFull:
            NSLog(@"UIDeviceBatteryStateFull 電池已 100% 充滿電了");
            break;
    }
    // 開啟或關閉距離感測器監測
    NSLog(@"proximityMonitoringEnabled=%d", device.proximityMonitoringEnabled);
    device.proximityMonitoringEnabled = YES;
    // 表示距離感測器是否接近使用者
    NSLog(@"proximityState=%d", device.proximityState);
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
