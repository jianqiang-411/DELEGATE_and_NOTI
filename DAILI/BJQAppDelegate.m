//
//  BJQAppDelegate.m
//  DAILI
//
//  Created by kevin on 13-5-16.
//  Copyright (c) 2013年 BJQ. All rights reserved.
//

#import "BJQAppDelegate.h"

#import "BJQViewController.h"

@implementation BJQAppDelegate
@synthesize twoVC,aviewController;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    aviewController = [[BJQViewController alloc] initWithNibName:@"BJQViewController" bundle:nil];
    
    self.window.rootViewController = self.aviewController;
    self.aviewController.delegate = self;
    twoVC = [[TWOViewController alloc] initWithNibName:@"TWOViewController" bundle:nil];
    
    //object 观察特定的类，nil 观察相应方法名的类
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(twoToOne) name:@"twoToOne" object:nil];
    
    

    [self.window makeKeyAndVisible];
    return YES;
}

- (void)twoToOne
{
    self.window.rootViewController = aviewController;
}




- (void)one_To_Two:(id)sender
{
    self.window.rootViewController = twoVC;
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
