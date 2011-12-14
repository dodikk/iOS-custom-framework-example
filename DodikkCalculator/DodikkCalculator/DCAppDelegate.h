//
//  DCAppDelegate.h
//  DodikkCalculator
//
//  Created by Oleksandr Dodatko on 12/12/11.
//  Copyright (c) 2011 EPAM systems. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CMCalculatorViewController;

@interface DCAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) CMCalculatorViewController *viewController;

@end
