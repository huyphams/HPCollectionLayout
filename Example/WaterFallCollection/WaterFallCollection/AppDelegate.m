//
//  AppDelegate.m
//  WaterFallCollection
//
//  Created by Huy Pham on 6/27/14.
//  Copyright (c) 2014 Huy Pham. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

@interface AppDelegate ()
            

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    ViewController *viewController = [[ViewController alloc] init];
    [self.window setRootViewController:viewController];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
