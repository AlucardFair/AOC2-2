//
//  friendFactory.h
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/15/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseFriends.h"
#import "airFriend.h"
#import "fireFriend.h"
#import "waterFriend.h"

@interface friendFactory : NSObject

+(baseFriends*)createFriend: (int)friendType;

@end
