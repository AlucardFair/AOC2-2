//
//  airFriend.m
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/15/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "airFriend.h"

@implementation airFriend

// Create getters and setters //
@synthesize attackDamagePerHit, attackCombo, specialUse;

// Initialize for airFriend //
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setAttackDamagePerHit:3];
        [self setAttackCombo:2];
        [self setSpecialUse:4.0];
        [self setTotalAttack:0];
    }
    return self;
}

// Manipulation method override //
-(void)calculateAttack
{
    [self setTotalAttack:(attackDamagePerHit * (attackCombo * specialUse))];
    NSLog(@"Aeratify's total attack will be %d.", self.totalAttack);
}

@end
