//
//  RotationAppDelegate.m
//  ScrollMenu
//
//  Created by Sol on 8/18/13.
//  Copyright (c) 2013 Sol. All rights reserved.
//

#import "RotationAppDelegate.h"
#import "MenuSlider.h"
#import "socialMenu.h"

@implementation RotationAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    //The height of the bottom menu bar.
    int height = 100;
   
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    CGRect sliderRect = [[self window] bounds];
    sliderRect.size.height = height;
    CGRect scrollRect = [[self window] bounds];
    scrollRect.origin.y = scrollRect.size.height - height;
    scrollRect.size.height = height;
    //scrollRect.size.width *=2;
    UIScrollView *imgScrollView = [[UIScrollView alloc] initWithFrame: CGRectMake(0, 0, self.window.frame.size.width, self.window.frame.size.height - height)];
    imgScrollView.backgroundColor = [UIColor grayColor];
    UIScrollView *view = [[UIScrollView alloc] initWithFrame: scrollRect];
    MenuSlider *slider1 = [[MenuSlider alloc] initWithFrame: sliderRect];
    sliderRect.origin.x =   sliderRect.size.width;
    socialMenu *slider2 = [[socialMenu alloc] initWithFrame: sliderRect];
    slider1.backgroundColor = [UIColor redColor];
    slider2.backgroundColor = [UIColor blueColor];
    sliderRect.size.width *=2;
    [view setContentSize: sliderRect.size];
    //[self addImgView:@"this" :slider2];
    [view addSubview:slider1];
    [view addSubview:slider2];
    
    [[self window] addSubview: view];
    [view setPagingEnabled: YES];
    [[self window] addSubview: imgScrollView];
    
    return YES;
}


-(void)addImgView:(NSString *) path :(MenuSlider *) view
{
    UIImage *btnImg = [UIImage imageNamed:@"/Users/Sol/Desktop/Programming/iOS/ScrollMenu/ScrollMenu/images/orange.png"];//[UIImage alloc];// initWithFrame:CGRectMake(0, 0, 15, 100)];
    UIButton *redButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [redButton setFrame: CGRectMake(0, 0, 100, 100)];
    [redButton setBackgroundImage: btnImg forState: UIControlStateNormal];
    [view addSubview:redButton];
    
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
