//
//  AppDelegate.m
//  ScaryBugs3
//
//  Created by Admin on 12.07.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"
#import "MasterViewController.h"
#import "ScaryBugDoc.h"


@interface AppDelegate () <UISplitViewControllerDelegate>

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    ScaryBugDoc* bug1 = [[ScaryBugDoc alloc] initWithTitle:@"Potato Bug" rating:4 thumbImage:[UIImage imageNamed:@"potatoBugThumb.jpg"] fullImage:[UIImage imageNamed:@"potatoBug.jpg"]];

    ScaryBugDoc* bug2 = [[ScaryBugDoc alloc] initWithTitle:@"House Centipede" rating:4 thumbImage:[UIImage imageNamed:@"centipedeThumb.jpg"] fullImage:[UIImage imageNamed:@"centipede.jpg"]];

    ScaryBugDoc* bug3 = [[ScaryBugDoc alloc] initWithTitle:@"Wolf Spider" rating:4 thumbImage:[UIImage imageNamed:@"wolfSpiderThumb.jpg"] fullImage:[UIImage imageNamed:@"wolfSpider.jpg"]];

    ScaryBugDoc* bug4 = [[ScaryBugDoc alloc] initWithTitle:@"Lady Bug" rating:4 thumbImage:[UIImage imageNamed:@"ladybugThumb.jpg"] fullImage:[UIImage imageNamed:@"ladybug.jpg"]];

    NSMutableArray* bugs = [NSMutableArray arrayWithObjects:bug1, bug2, bug3, bug4, nil];












    //UISplitViewController *splitViewController = (UISplitViewController *)self.window.rootViewController;
    //UINavigationController *nav = [splitViewController.viewControllers firstObject];
    UINavigationController *nav = [[(UISplitViewController*)self.window.rootViewController viewControllers] firstObject];
    MasterViewController *masterViewController = [nav.viewControllers objectAtIndex:0];
    masterViewController.bugs = bugs;







    //UINavigationController *nav = [splitViewController.viewControllers firstObject];
   // UINavigationController *nav = [[(UISplitViewController)self.window.rootViewController viewControllers] firstObject];
//
  //  MasterViewController *masterViewController = [nav.viewControllers objectAtIndex:0];
   // masterViewController.bugs = bugs;








//        MasterViewController* masterController = [navigationController.viewControllers lastObject];
//    masterController.navigationItem.leftBarButtonItem = navigationController.displayModeButtonItem;
//    //masterController.navigationItem.leftBarButtonItem = splitViewController.displayModeButtonItem;
//    masterController.bugs = bugs;
//    splitViewController.delegate = self;


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

#pragma mark - Split view

- (BOOL)splitViewController:(UISplitViewController *)splitViewController collapseSecondaryViewController:(UIViewController *)secondaryViewController ontoPrimaryViewController:(UIViewController *)primaryViewController {
    if ([secondaryViewController isKindOfClass:[UINavigationController class]] && [[(UINavigationController *)secondaryViewController topViewController] isKindOfClass:[DetailViewController class]] && ([(DetailViewController *)[(UINavigationController *)secondaryViewController topViewController] detailItem] == nil)) {
        // Return YES to indicate that we have handled the collapse by doing nothing; the secondary controller will be discarded.
        return YES;
    } else {
        return NO;
    }
}

@end
