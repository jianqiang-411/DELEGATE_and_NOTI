//
//  TWOViewController.m
//  DAILI
//
//  Created by kevin on 13-5-16.
//  Copyright (c) 2013年 BJQ. All rights reserved.
//

#import "TWOViewController.h"

@interface TWOViewController ()

@end

@implementation TWOViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (IBAction)twoToOne:(id)sender {
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"twoToOne" object:nil];
    
  
}

@end
