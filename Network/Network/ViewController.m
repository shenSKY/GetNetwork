//
//  ViewController.m
//  Network
//
//  Created by 沈凯 on 2018/1/23.
//  Copyright © 2018年 Ssky. All rights reserved.
//

#import "ViewController.h"
#import "NetworkInformation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
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
