//
//  ViewController.m
//  Network
//
//  Created by 沈凯 on 2018/1/23.
//  Copyright © 2018年 Ssky. All rights reserved.
//

#import "ViewController.h"
#import "NetworkInformation.h"
#import <CoreLocation/CoreLocation.h>

@interface ViewController ()
@property (strong, nonatomic) CLLocationManager *locationManager;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSString* phoneVersion = [[UIDevice currentDevice] systemVersion];
    CGFloat version = [phoneVersion floatValue];
        // 如果是iOS13 未开启地理位置权限 需要提示一下
    if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined && version >= 13) {
        self.locationManager = [[CLLocationManager alloc] init];
        [self.locationManager requestWhenInUseAuthorization];
    }
}

- (IBAction)action:(UIButton *)sender {
    NSLog(@"1--%@", [NetworkInformation getWifiSSID]);
    NSLog(@"2--%@", [NetworkInformation getWifiBSSID]);
    NSLog(@"3--%@", [NetworkInformation getNetworkTypeByReachability]);
    NSLog(@"4--%@", [NetworkInformation getNetworkType]);
    NSLog(@"5--%d", [NetworkInformation getWifiSignalStrength]);
    NSLog(@"6--%@", [NetworkInformation getIPAddress]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
