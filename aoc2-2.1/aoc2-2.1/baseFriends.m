//
//  baseFriends.m
//  aoc2-2.1
//
//  Created by Zachery Hernandez on 1/8/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "baseFriends.h"

@implementation baseFriends

// Create getters and setters //
@synthesize attackMoves, friendSlogan, attackDamagePerHit, attackCombo, totalAttack;

// Initialize //
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setAttackMoves:nil];
        [self setFriendSlogan:nil];
        [self setAttackDamagePerHit:0];
        [self setAttackCombo:0];
        [self setTotalAttack:0];
    }
    return self;
}

//Manipulation method //
-(void)calculateAttack
{
    // NSLog to show the calculateAttack method is being run //
    NSLog(@"Calculating attack...one second please.");
}

@end
