//
//  friendFactory.m
//  aoc2-2.1
//
//  Created by Zachery Hernandez on 1/8/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "friendFactory.h"

@implementation friendFactory

+(baseFriends*)createFriend: (int)friendType
{
    // Check to see which is being called //
    // airFriend is being called //
    if (friendType == AIR)
    {
        return [[airFriend alloc] init];
    }
    // fireFriend is being called //
    else if (friendType == FIRE)
    {
        return [[fireFriend alloc] init];
    }
    // waterFriend is being called //
    else if (friendType == WATER)
    {
        return [[waterFriend alloc] init];
    }
    // No Friend is being called, return nothing //
    else return nil;
}

@end
