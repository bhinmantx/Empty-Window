//
//  AppDelegate.m
//  Empty Window
//
//  Created by Brendan Hinman on 6/11/13.
//  Copyright (c) 2013 Brendan Hinman. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"
#import "MyClass.h"
@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    //self.viewController = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self.viewController = [[ViewController alloc] initWithNumber:@"ViewController"];
    self.window.rootViewController = self.viewController;
    [self.window makeKeyAndVisible];
    
    
    MyClass* mc = [[MyClass alloc] init];
    [[NSBundle mainBundle] loadNibNamed:@"MyNib" owner:mc options:nil];
    
    
    ///My modifications to the myClass and ViewController classes
    ///require some information being passed which leads to
    ///some pretty strong coupling
    [mc setActiveView:self.viewController];
    
    
    [self.viewController setThisClass:mc];
    
    UILabel* lab = [mc valueForKey: @"theLabel"];
    [self.window.rootViewController.view addSubview: lab];
    lab.center = CGPointMake(100,20);
    lab.frame = CGRectIntegral(lab.frame);
    
    
    //NSArray* myArray = [[NSArray alloc] initWithObjects:(id)@"marj.jpg",(id)@"marj2.jpg", nil];
    
    
    //UILabel* lab2 = [mc valueForKey:@"theAlert"];
    //[self.window.rootViewController.view addSubview:lab2];
    
    
   // [mc changeThatLabel];

    
    
    
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
