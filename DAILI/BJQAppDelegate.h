//
//  BJQAppDelegate.h
//  DAILI
//
//  Created by kevin on 13-5-16.
//  Copyright (c) 2013年 BJQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TWOViewController.h"
#import "ChaneViewDelegate.h"
@class BJQViewController;
@class TWOViewController;
@interface BJQAppDelegate : UIResponder <UIApplicationDelegate,ChaneViewDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BJQViewController *aviewController;
@property (strong, nonatomic) TWOViewController *twoVC;
@end
