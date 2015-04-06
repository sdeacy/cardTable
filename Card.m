//
//  Card.m
//  CardTable
//
//  Created by shay deacy on 05/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import "Card.h"

@implementation Card


- (id)initWithSuit:(NSString *)suit face:(NSString *)face{
    self = [super init];
    if(!self) { return nil; }
    
    _suit = suit;
    _face = face;
    
    return self;
}

- (NSInteger)value{
    NSDictionary *values = @{
                             @"A": @10,
                             @"1": @1,
                             @"2": @2,
                             @"3": @3,
                             @"4": @4,
                             @"5": @5,
                             @"6": @6,
                             @"7": @7,
                             @"8": @8,
                             @"9": @9,
                             @"10": @10,
                             @"J": @10,
                             @"Q": @10,
                             @"K": @10
                             };
    
    NSNumber *value = values[_face];
    if(value){
        return value.integerValue;
    }else{
        return 0;
    }
}

- (NSString*)description{
    return [NSString stringWithFormat:@"%@%@",_suit,_face];
}

@end
