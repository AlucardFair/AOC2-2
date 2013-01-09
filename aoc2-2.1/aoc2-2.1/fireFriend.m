//
//  fireFriend.m
//  aoc2-2.1
//
//  Created by Zachery Hernandez on 1/8/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "fireFriend.h"

@implementation fireFriend

// Create getters and setters //
@synthesize attackDamagePerHit, attackCombo, weaponUse;

// Initialize for airFriend //
-(id)init
{
    self = [super init];
    if (self != nil)
    {
        [self setAttackDamagePerHit:7];
        [self setAttackCombo:5];
        [self setWeaponUse:1];
        [self setTotalAttack:0];
    }
    return self;
}

// Manipulation method override //
-(void)calculateAttack
{
    [self setTotalAttack:(attackDamagePerHit * (attackCombo * weaponUse))];
    NSLog(@"Pyre's total attack will be %d.", self.totalAttack);
}

@end
