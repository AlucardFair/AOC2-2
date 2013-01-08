//
//  airFriend.h
//  aoc2-2.1
//
//  Created by Zachery Hernandez on 1/8/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "baseFriends.h"

@interface airFriend : baseFriends


// Data members for attackDamagePerHit, attackCombo and specialUse //
@property float specialUse;

// Manipulation method override //
-(void)calculateAttack;

@end
