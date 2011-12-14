//
//  DCAppDelegate.m
//  DodikkCalculator
//
//  Created by Oleksandr Dodatko on 12/12/11.
//  Copyright (c) 2011 EPAM systems. All rights reserved.
//

#import "DCAppDelegate.h"


@implementation DCAppDelegate

@synthesize window = _window;
@synthesize viewController = _viewController;

- (void)dealloc
{
   [_window release];
   [_viewController release];
   [super dealloc];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
   self.window = [[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]] autorelease];
   // Override point for customization after application launch.
  
   CMCalculatorViewController* calc_controller_ = [ [ [ CMCalculatorViewController alloc ] initWithNibName: [ CMResourceManager calcUIMockResourceName: @"CMCalculatorViewController" ]
                                                                                                    bundle: [ NSBundle mainBundle ] ] autorelease];
   self.viewController = calc_controller_;
   self.window.rootViewController = self.viewController;
   [self.window makeKeyAndVisible];
   return YES;
}


@end
