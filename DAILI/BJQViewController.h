//
//  BJQViewController.h
//  DAILI
//
//  Created by kevin on 13-5-16.
//  Copyright (c) 2013年 BJQ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChaneViewDelegate.h"
@interface BJQViewController : UIViewController
- (IBAction)rootToTwo:(id)sender;
@property (assign, nonatomic) id<ChaneViewDelegate>delegate;
@property (retain, nonatomic) UIImageView *ImaV;
@end
