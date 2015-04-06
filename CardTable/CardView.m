//
//  CardView.m
//  CardTable
//
//  Created by shay deacy on 05/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import "cardView.h"
#define RANDOM_COLOR                                                           \
[UIColor colorWithRed : (CGFloat)random() / (CGFloat)RAND_MAX green : (CGFloat)random() / (CGFloat)RAND_MAX blue : (CGFloat)random() / (CGFloat)RAND_MAX alpha : 1.0]

@implementation cardView

/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect {
 // Drawing code
 }
 */

-(id)initWithFrame:(CGRect)frame {
    
    self =[super initWithFrame:frame];
    
    if(self){
        self.backgroundColor = RANDOM_COLOR;
        
        [self.layer setCornerRadius:3.0f];
        
        // border
        [self.layer setBorderColor:[UIColor lightGrayColor].CGColor];
        [self.layer setBorderWidth:1.5f];
    }
    
    return self;
    
}

-(void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {

    currentPoint = [[touches anyObject] locationInView:self];
    NSLog(@"CurrentPoint: %@",NSStringFromCGPoint(currentPoint));
    
    [self.superview bringSubviewToFront:self];
    lastLocation = [self center];
    NSLog(@"lastLocation: %@",NSStringFromCGPoint(lastLocation));
    
}

- (void) touchesMoved:(NSSet*)touches withEvent:(UIEvent*)event
{
    
    CGPoint touchedPoint = [[touches anyObject] locationInView:self];
    NSLog(@"touchedPoint: %@",NSStringFromCGPoint(touchedPoint));

    
    CGPoint newPoint = CGPointMake(self.center.x + (touchedPoint.x - currentPoint.x),
                                   self.center.y + (touchedPoint.y - currentPoint.y));
    NSLog(@"newPoint: %@",NSStringFromCGPoint(newPoint));
    

    self.center = newPoint;
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"self.centre %@",NSStringFromCGPoint(self.center));
    CGPoint newPoint = self.center;
    NSArray * possibleXPositions = @[@325,@275,@225,@175,@125,@75,@25];
   
    if (newPoint.x >= 0 && newPoint.x < 50) {
        newPoint.x = 50;
    } else if(newPoint.x >= 50 && newPoint.x < 100){
        newPoint.x = 100;
    }
     else if(newPoint.x >= 100 && newPoint.x < 150){
         newPoint.x = 150;
     }
     else if(newPoint.x >= 150 && newPoint.x < 200){
         newPoint.x = 200;
     }
     else if(newPoint.x >= 200 && newPoint.x < 250){
         newPoint.x = 250;
     }
     else if(newPoint.x >= 250 && newPoint.x < 300){
         newPoint.x = 300;
     }
     else if(newPoint.x >= 300 && newPoint.x < 350){
         newPoint.x = 350;
     }
    else{
        newPoint.x =  newPoint.x;
    }
    self.center = newPoint;
}

@end
