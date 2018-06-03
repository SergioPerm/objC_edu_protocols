//
//  AppDelegate.m
//  ProtocolsTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Student.h"
#import "Dancer.h"
#import "Developer.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor lightGrayColor];
    self.window.rootViewController = [[UIViewController alloc] init];
    [self.window makeKeyAndVisible];

    Dancer* dancer1 = [[Dancer alloc] init];
    Dancer* dancer2 = [[Dancer alloc] init];
    
    Student* student1 = [[Student alloc] init];
    Student* student2 = [[Student alloc] init];
    Student* student3 = [[Student alloc] init];
    
    dancer1.name = @"Ololoshka";
    dancer2.name = @"Ololoshka2";
    
    student1.name = @"Vanya";
    student2.name = @"Olya";
    student3.name = @"Sasha";
    
    Developer* developer1 = [[Developer alloc] init];
    
    developer1.name = @"Sereja";
    
    //NSArray patients = [NSArray arrayWithObjects:dancer1, dancer2, student1, student2, student3, developer1, nil];
    
    NSObject* fake = [[NSObject alloc] init];
    
    NSArray* patients = @[dancer1, dancer2, student1, student2, student3, developer1, fake];
    
    for (id <Patient> currPatient in patients) {
        
        if (![currPatient conformsToProtocol:@protocol(Patient)]) {
            continue;
        }
        
        NSLog(@"Patient name = %@", currPatient.name);
        
        if ([currPatient respondsToSelector:@selector(howIsYouFamily)]) {
            NSLog(@"How is your family? \n%@", [currPatient howIsYouFamily]);
        }
        
        if ([currPatient respondsToSelector:@selector(howIsYouJob)]) {
            NSLog(@"How is your job? \n%@", [currPatient howIsYouJob]);
        }
        
        if (![currPatient areYouOk]) {
            [currPatient takePill];
            [currPatient makeShot];
        }
        
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
