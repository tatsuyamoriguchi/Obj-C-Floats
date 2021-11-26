//
//  AppDelegate.m
//  Obj-C-Floats
//
//  Created by Tatsuya Moriguchi on 11/26/21.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    float f = M_PI;
    double d = M_PI;
    CGFloat cgf = M_PI;
    
    NSLog(@"Float: %f (%lu bytes)", f, sizeof(f)); // On 32/64 bit platform, Float: 3.141593 (4 bytes)
    NSLog(@"Double: %f (%lu bytes)", d, sizeof(d)); // On 32/64 bit platform, Double: 3.141593 (8 bytes)
    NSLog(@"CGFloat: %f (%lu bytes)", cgf, sizeof(cgf)); // On 32 bit platform, CGFloat: 3.141593 (4 bytes), On 64 bit platform, 8 bytes
    
    
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
