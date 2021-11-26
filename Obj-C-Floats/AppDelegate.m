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
    
    NSLog(@"Float: %0.12f (%lu bytes)", f, sizeof(f)); // On 32/64 bit platform, Float: 3.141592741013 (4 bytes)
    NSLog(@"Double: %0.12f (%lu bytes)", d, sizeof(d)); // On 32/64 bit platform, Double: 3.141592653590 (8 bytes)
    NSLog(@"CGFloat: %0.12f (%lu bytes)", cgf, sizeof(cgf)); // On 64 bit platform, CGFloat: 3.141592653590 (8 bytes)
    // Double is more accurate than Float
    NSLog(@"Descrepancy Error: %0.12f", ABS((double)f - d));
   
    float oneThirdWrong = 1/3;
    NSLog(@"One third wrong: %f", oneThirdWrong); // One third wrong: 0.000000 <---
    
    float oneThirdWrong2 = 1.0/3.0;
    NSLog(@"One third wrong2: %f", oneThirdWrong2); // One third wrong2: 0.333333
    
    
    float initial = 1000000; // Increase the initial value from 0.1 to 1000000
    
    int iterations = 1327;
    float step =  initial / iterations;
    f = 0;
    for (int i = 0; i < iterations; ++i) {
        f += step;
    }
    
//    f = initial / 3;
//    f += initial / 3;
//    f += initial / 3;
    
    float tolerance = iterations * FLT_EPSILON; // Increase tolerance value multiplied by iterations

    NSLog(@"f: %.12f", f);
    NSLog(@"initial: %.12f", initial);
    NSLog(@"Error: %.12f", ABS(f - initial)); // Error: 0.000001177192
    NSLog(@"Tolerance: %.12f", tolerance); // Tolerance: 0.000000119209
    
   // Since Error value is larger than Tolerance, it returns "No Match"
    
    if (ABS(f - initial) < tolerance) {
        NSLog(@"Match!");
        
    } else {
        NSLog(@"No match: [");
    }
    
    
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
