//
//  AppDelegate.m
//  ZLZP
//
//  Created by tony J on 13-2-18.
//  Copyright (c) 2013年 曲超杰. All rights reserved.
//

#import "AppDelegate.h"
#import "FirstViewController.h"
#import "ShiViewController.h"
#import "MoneyViewController.h"
#import "QiuViewController.h"
#import "MyViewController.h"

@implementation AppDelegate

- (void)dealloc
{
    [_window release];
    [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.array = [NSMutableArray arrayWithCapacity:1];
    FirstViewController *firstvc = [[FirstViewController alloc] initWithStyle:(UITableViewStyleGrouped)];
    UINavigationController *navi = [[UINavigationController alloc] initWithRootViewController:firstvc];
    
    [self.array addObject:navi];
    MyViewController *myvc = [[MyViewController alloc] initWithStyle:(UITableViewStyleGrouped)];
    UINavigationController *navi1 = [[UINavigationController alloc] initWithRootViewController:myvc];
    [self.array addObject:navi1];
    
    ShiViewController *shivc = [[ShiViewController alloc] initWithStyle:(UITableViewStyleGrouped)];
    UINavigationController *navi2 = [[UINavigationController alloc] initWithRootViewController:shivc];
    [self.array addObject:navi2];
    
    MoneyViewController *moyvc = [[MoneyViewController alloc] initWithStyle:(UITableViewStyleGrouped)];
    UINavigationController *navi3 = [[UINavigationController alloc] initWithRootViewController:moyvc];
    [self.array addObject:navi3];
    
    QiuViewController *qiuvc = [[QiuViewController alloc] initWithStyle:(UITableViewStyleGrouped)];
    UINavigationController *navi4 = [[UINavigationController alloc] initWithRootViewController:qiuvc];
    [self.array addObject:navi4];

    UITabBarController *tabbarvc = [[UITabBarController alloc] init];
    tabbarvc.viewControllers = self.array;

    self.window.rootViewController = tabbarvc;

    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
