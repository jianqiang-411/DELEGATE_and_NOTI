//
//  BJQViewController.m
//  DAILI
//
//  Created by kevin on 13-5-16.
//  Copyright (c) 2013年 BJQ. All rights reserved.
//

#import "BJQViewController.h"

@interface BJQViewController ()

@end

@implementation BJQViewController
@synthesize delegate,ImaV;
- (void)viewDidLoad
{
    [super viewDidLoad];
	ImaV = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 250, 250)];
    ImaV.image = [UIImage imageNamed:@"ll.png"];
    [self.view addSubview:ImaV];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)rootToTwo:(id)sender {
    [UIView animateWithDuration:1 animations:^{
        self.ImaV.alpha = 0.2;
    } completion:^(BOOL finished){
        
    [delegate one_To_Two:nil];
      self.ImaV.alpha = 1;
    }];
    
}
@end
