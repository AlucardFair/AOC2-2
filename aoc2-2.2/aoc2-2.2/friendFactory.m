//
//  friendFactory.m
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/15/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "friendFactory.h"

@implementation friendFactory

+(baseFriends*)createFriend:(int)friendType
{
    // Check to see which friend is being called //
    // airFriend is being called //
    if (friendType == AIR)
    {
        return [[airFriend alloc] init];
    }
    else if (friendType == FIRE)
    {
        return [[fireFriend alloc] init];
    }
    else if (friendType == WATER)
    {
        return [[waterFriend alloc] init];
    }
    else return nil;
}

@end
