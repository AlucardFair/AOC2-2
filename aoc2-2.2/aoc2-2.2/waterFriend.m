//
//  waterFriend.m
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/15/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "waterFriend.h"

@implementation waterFriend

// Create getters and setters //
@synthesize attackDamagePerHit, attackCombo, coldWeather;

// Initialize for waterFriend //
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setAttackDamagePerHit:7];
        [self setAttackCombo:5];
        [self setColdWeather:.1];
        [self setTotalAttack:0];
    }
    return self;
}

// Manipulation method override //
-(void)calculateAttack
{
    [self setTotalAttack:(attackDamagePerHit * (attackCombo * coldWeather))];
    NSLog(@"Aqueous' total attack will be %d.", self.totalAttack);
}

@end
