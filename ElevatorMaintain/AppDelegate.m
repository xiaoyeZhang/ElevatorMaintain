//
//  AppDelegate.m
//  ElevatorMaintain
//
//  Created by 张晓烨 on 2017/9/29.
//  Copyright © 2017年 zxy. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    self.window = [[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];

    [[UINavigationBar appearance] setBarTintColor:RGBCOLOR(63, 173, 233, 1)];
    
    [self automatic_loginL];
    
    return YES;
}

- (void)automatic_loginL{
    
//    NSUserDefaults *PassWordDefaults = [NSUserDefaults standardUserDefaults];
//    
//    NSString *PassWord = [PassWordDefaults objectForKey:@"PassWord"];
    
    //    如果 App 状态为未运行，此函数将被调用，如果launchOptions包含UIApplicationLaunchOptionsRemoteNotificationKey表示用户点击apn 通知导致app被启动运行；如果不含有对应键值则表示 App 不是因点击apn而被启动，可能为直接点击icon被启动或其他
//    if (userEntity.tel.length > 0 && PassWord.length > 0) { //已登录
//
//        [self getInMainView];
//
//        [self doLogin:PassWord];
//
//    }else{
    
        
        LoginViewController *loginViewController = [[LoginViewController alloc]init];
        self.hVC = [[UINavigationController alloc]initWithRootViewController:loginViewController];
        
        self.window.rootViewController = self.hVC;
        
        [self.window makeKeyAndVisible];
        
//    }
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
