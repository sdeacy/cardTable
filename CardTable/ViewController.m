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
    self.view.backgroundColor = [UIColor greenColor];

//    UIView *myBox  = [[UIView alloc] initWithFrame:CGRectMake(180, 35, 10, 10)];
//    myBox.backgroundColor = [UIColor lightGrayColor];
//    [self.view addSubview:myBox];
    
    
    //divide screen into 7 columns
    CGSize size = self.view.bounds.size;
    NSInteger width = size.width;
    NSInteger height = size.height;
    NSLog(@"width: %ld,height: %ld",(long)width,(long)height);
    NSLog(@"self.view.bounds: %@",NSStringFromCGRect(self.view.bounds));
    
    CGFloat columnSize = 50;
    NSLog(@"col size: %f",columnSize);
 
    NSArray * possibleXPositions = @[@325,@275,@225,@175,@125,@75,@25];
    for (NSString *item in possibleXPositions) {
        NSLog(@"%@", item);
    }
    int numberOfCardsToDeal = 7;
    while (numberOfCardsToDeal>0) {
        
        for (NSInteger x = width-50; x > 0; x = x - columnSize)
        {
            CGFloat pointX = x;
            CGFloat pointY = 100;
            for (int j = 0 ; j < numberOfCardsToDeal ; j++)
            {
                pointY = pointY + 20;
                NSLog(@"\nno. cards:%d x:%f y:%f",numberOfCardsToDeal,pointX,pointY);
                NSLog(@"\n--------");
                cardView *newView = [[cardView alloc] initWithFrame: CGRectMake(pointX, pointY, 50, 70)];
                [self.view addSubview:newView];
            }
            numberOfCardsToDeal--;
        }
    }
}

-(void)snapToColumn{
    
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



- (void)viewWillAppear:(BOOL)animated
{

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
