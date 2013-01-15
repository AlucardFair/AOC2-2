//
//  baseFriends.h
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/15/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseFriends : NSObject
{
    // Create variable for ENUM //
    int friendEnum;
}

// enum to put a value on keywords //
typedef enum
{
    AIR,
    FIRE,
    WATER
}friendEnum;

// Data members for attackMoves, friendSlogan, attackDamagePerHit and attackCombo //
@property (nonatomic, retain) NSArray *attackMoves;
@property (nonatomic, retain) NSString *friendSlogan;
@property int attackDamagePerHit;
@property int attackCombo;
@property int totalAttack;

//Initialize //
-(id)init;

// Manipulation method //
-(void)calculateAttack;

@end
