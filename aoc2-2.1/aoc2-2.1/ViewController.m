//
//  ViewController.m
//  aoc2-2.1
//
//  Created by Zachery Hernandez on 1/7/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
//************************************** Default View **************************************//
    
    // View Background Color //
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    // Title Label //
    UILabel *titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0.0, 0.0, 320.0, 25.0)];
    if (titleLabel != nil)
    {
        titleLabel.text = @"Pocket Friends";
        titleLabel.backgroundColor = [UIColor blackColor];
        titleLabel.textColor = [UIColor whiteColor];
        [self.view addSubview:titleLabel];
    }
    
//************************************** Air Friend **************************************//
    
    // Air Friend Label //
    UILabel *airFriendLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 35.0, 160.0, 25.0)];
    if (airFriendLabel != nil)
    {
        airFriendLabel.text = @"Aeratify";
        airFriendLabel.textColor = [UIColor blackColor];
        airFriendLabel.font = [UIFont boldSystemFontOfSize:17.0];
        airFriendLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:airFriendLabel];
    }
    
    // Create an Air Friend //
    airFriend *aeratify = (airFriend*)[friendFactory createFriend:AIR];
    [aeratify setAttackDamagePerHit:3];
    
    // Check to see if aeratify is an object //
    if (aeratify != nil)
    {
        // Set the attack moves //
        NSArray *_attackMoves = [[NSArray alloc] initWithObjects:@"Jab", @"Upper-Cut", @"Swift-Kick",nil];
        [aeratify setAttackMoves:_attackMoves];
        
        // Set the friend slogan //
        NSString *_friendSlogan = @"I am Aeratify. There is no breeze coming next!";
        [aeratify setFriendSlogan:_friendSlogan];
        
        // Check the conents in a log //
        NSLog(@"Aeratify has the following attack moves: %@", [aeratify attackMoves]);
        NSLog(@"Friend's Slogan: %@", [aeratify friendSlogan]);
        
        // Check the calculation //
        [aeratify calculateAttack];
    }
    
    // Dynamic Labels //
    // Attack Moves Label //
    UILabel *airFriendMovesLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 60.0, 310.0, 25.0)];
    if (airFriendMovesLabel != nil)
    {
        airFriendMovesLabel.text = [NSString stringWithFormat:@"Attack Moves: %@", [aeratify attackMoves]];
        airFriendMovesLabel.font = [UIFont systemFontOfSize:12.0];
        airFriendMovesLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:airFriendMovesLabel];
    }
    
    // Slogan Label //
    UILabel *airFriendSloganLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 85.0, 310.0, 30.0)];
    if (airFriendSloganLabel != nil)
    {
        airFriendSloganLabel.text = [NSString stringWithFormat:@"Friend's Slogan: %@", [aeratify friendSlogan]];
        airFriendSloganLabel.font = [UIFont systemFontOfSize:12.0];
        airFriendSloganLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        airFriendSloganLabel.numberOfLines = 2;
        [self.view addSubview:airFriendSloganLabel];
    }
    
    // Total Attack Label //
    UILabel *aeratifyTotalAttack = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 110.0, 310.0, 30.0)];
    if (aeratifyTotalAttack != nil)
    {
        NSString *aeratifytotalAttackString = [NSString stringWithFormat:@"Aeratify's total attack will be %dhp.", [aeratify totalAttack]];
        aeratifyTotalAttack.text = aeratifytotalAttackString;
        aeratifyTotalAttack.font = [UIFont systemFontOfSize:12.0];
        aeratifyTotalAttack.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:aeratifyTotalAttack];
    }
    
//************************************** Fire Friend **************************************//
    
    // Fire Friend Label //
    UILabel *fireFriendLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 135.0, 160.0, 25.0)];
    if (fireFriendLabel != nil)
    {
        fireFriendLabel.text = @"Pyre";
        fireFriendLabel.textColor = [UIColor blackColor];
        fireFriendLabel.font = [UIFont boldSystemFontOfSize:17.0];
        fireFriendLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:fireFriendLabel];
    }
    
    // Create an Fire Friend //
    fireFriend *pyre = (fireFriend*)[friendFactory createFriend:FIRE];
    [pyre setAttackDamagePerHit:9];
    
    // Check to see if aeratify is an object //
    if (pyre != nil)
    {
        // Set the attack moves //
        NSArray *_attackMoves = [[NSArray alloc] initWithObjects:@"Jab", @"Hook", @"Infernal-Kick",nil];
        [pyre setAttackMoves:_attackMoves];
        
        // Set the friend slogan //
        NSString *_friendSlogan = @"I am Pyre. I will bring you into the inferno!";
        [pyre setFriendSlogan:_friendSlogan];
        
        // Check the conents in a log //
        NSLog(@"Pyre has the following attack moves: %@", [pyre attackMoves]);
        NSLog(@"Friend's Slogan: %@", [pyre friendSlogan]);
        
        // Check the calculation //
        [pyre calculateAttack];
    }
    
    // Dynamic Labels //
    // Attack Moves Label //
    UILabel *fireFriendMovesLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 160.0, 310.0, 25.0)];
    if (fireFriendMovesLabel != nil)
    {
        fireFriendMovesLabel.text = [NSString stringWithFormat:@"Attack Moves: %@", [pyre attackMoves]];
        fireFriendMovesLabel.font = [UIFont systemFontOfSize:12.0];
        fireFriendMovesLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:fireFriendMovesLabel];
    }
    
    // Slogan Label //
    UILabel *fireFriendSloganLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 185.0, 310.0, 30.0)];
    if (fireFriendSloganLabel != nil)
    {
        fireFriendSloganLabel.text = [NSString stringWithFormat:@"Friend's Slogan: %@", [pyre friendSlogan]];
        fireFriendSloganLabel.font = [UIFont systemFontOfSize:12.0];
        fireFriendSloganLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        fireFriendSloganLabel.numberOfLines = 2;
        [self.view addSubview:fireFriendSloganLabel];
    }
    
    // Total Attack Label //
    UILabel *pyreTotalAttack = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 210.0, 310.0, 30.0)];
    if (pyreTotalAttack != nil)
    {
        NSString *pyretotalAttackString = [NSString stringWithFormat:@"Pyre's total attack will be %dhp.", [pyre totalAttack]];
        pyreTotalAttack.text = pyretotalAttackString;
        pyreTotalAttack.font = [UIFont systemFontOfSize:12.0];
        pyreTotalAttack.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:pyreTotalAttack];
    }
    
    
//************************************** Water Friend **************************************//
    
    // Water Friend Label //
    UILabel *waterFriendLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 235.0, 160.0, 25.0)];
    if (waterFriendLabel != nil)
    {
        waterFriendLabel.text = @"Aqueous";
        waterFriendLabel.textColor = [UIColor blackColor];
        waterFriendLabel.font = [UIFont boldSystemFontOfSize:17.0];
        waterFriendLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:waterFriendLabel];
    }
    
    // Create an Fire Friend //
    waterFriend *aqueous = (waterFriend*)[friendFactory createFriend:WATER];
    [pyre setAttackDamagePerHit:10];
    
    // Check to see if aeratify is an object //
    if (aqueous != nil)
    {
        // Set the attack moves //
        NSArray *_attackMoves = [[NSArray alloc] initWithObjects:@"Jab", @"Left-Cross", @"Tsunami-Kick",nil];
        [aqueous setAttackMoves:_attackMoves];
        
        // Set the friend slogan //
        NSString *_friendSlogan = @"I am Aqueous. It's time for you to be liquified!";
        [aqueous setFriendSlogan:_friendSlogan];
        
        // Check the conents in a log //
        NSLog(@"Aqueous has the following attack moves: %@", [aqueous attackMoves]);
        NSLog(@"Friend's Slogan: %@", [aqueous friendSlogan]);
        
        // Check the calculation //
        [aqueous calculateAttack];
    }
    
    // Dynamic Labels //
    // Attack Moves Label //
    UILabel *waterFriendMovesLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 260.0, 310.0, 30.0)];
    if (waterFriendMovesLabel != nil)
    {
        waterFriendMovesLabel.text = [NSString stringWithFormat:@"Attack Moves: %@", [aqueous attackMoves]];
        waterFriendMovesLabel.font = [UIFont systemFontOfSize:11.0];
        waterFriendMovesLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:waterFriendMovesLabel];
    }
    
    // Slogan Label //
    UILabel *waterFriendSloganLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 285.0, 310.0, 30.0)];
    if (waterFriendSloganLabel != nil)
    {
        waterFriendSloganLabel.text = [NSString stringWithFormat:@"Friend's Slogan: %@", [aqueous friendSlogan]];
        waterFriendSloganLabel.font = [UIFont systemFontOfSize:12.0];
        waterFriendSloganLabel.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        waterFriendSloganLabel.numberOfLines = 2;
        [self.view addSubview:waterFriendSloganLabel];
    }
    
    // Total Attack Label //
    UILabel *aqueousTotalAttack = [[UILabel alloc] initWithFrame:CGRectMake(5.0, 310.0, 310.0, 30.0)];
    if (aqueousTotalAttack != nil)
    {
        NSString *aqueoustotalAttackString = [NSString stringWithFormat:@"Aqueous' total attack will be %dhp.", [aqueous totalAttack]];
        aqueousTotalAttack.text = aqueoustotalAttackString;
        aqueousTotalAttack.font = [UIFont systemFontOfSize:12.0];
        aqueousTotalAttack.backgroundColor = [UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
        [self.view addSubview:aqueousTotalAttack];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
