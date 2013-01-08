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
    
//************************************** Fire Friend **************************************//
    
//************************************** Water Friend **************************************//
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
