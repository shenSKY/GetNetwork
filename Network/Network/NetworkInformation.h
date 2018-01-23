//
//  NetworkInformation.h
//  Network
//
//  Created by 沈凯 on 2018/1/23.
//  Copyright © 2018年 Ssky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkInformation : NSObject
//获取当前网络类型
+ (NSString *)getNetworkType;
//获取当前网络类型
+ (NSString *)getNetworkTypeByReachability;
//获取Wifi信息
+ (id)fetchSSIDInfo;
//获取WIFI名字
+ (NSString *)getWifiSSID;
//获取WIFi的MAC地址
+ (NSString *)getWifiBSSID;
//获取Wifi信号强度
+ (int)getWifiSignalStrength;
@end
