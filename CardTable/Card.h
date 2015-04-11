//
//  Card.h
//  CardTable
//
//  Created by shay deacy on 06/04/2015.
//  Copyright (c) 2015 shay deacy. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString *suit;
@property (nonatomic, strong) NSString *face;

@property (nonatomic, readonly) NSInteger value;

- (id)initWithSuit:(NSString*)suit face:(NSString*)face;

@end