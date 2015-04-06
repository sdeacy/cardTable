//
//  ViewController.m
//  CardTable
//
//  Created by shay deacy on 30/03/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


-(void) viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];

//    UIView *myBox  = [[UIView alloc] initWithFrame:CGRectMake(180, 35, 10, 10)];
//    myBox.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:myBox];
    
    cardView *newView = [[cardView alloc] initWithFrame: CGRectMake(10, 10, 30, 70)];
    [self.view addSubview:newView];
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



- (void)viewWillAppear:(BOOL)animated
{
//    [super viewWillAppear:animated];
//    //Add gradient background
//    CAGradientLayer *bgLayer = [BackgroundLayer greenGradient];
//    bgLayer.frame = self.view.bounds;
//    [self.view.layer insertSublayer:bgLayer atIndex:0];
    
    }

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
