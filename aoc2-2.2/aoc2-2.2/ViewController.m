//
//  ViewController.m
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/13/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
//************************************** Default View / Settings **************************************//
    
    // View Background Color //
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Disable Calculate Critical Attack Button //
    calculateCriticalAttackButton.enabled = false;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

//************************************** onInfo IBAction **************************************//
-(IBAction)onInfo:(id)sender
{
    // Display infoView (Alloc and Init) //
    infoView *infoController = [[infoView alloc] initWithNibName:@"infoView" bundle:nil];
    if (infoController != nil)
    {
        // presentModalViewController is depreciated //
        [self presentViewController:infoController animated:true completion:nil];
    }
}

//************************************** onSelect IBAction **************************************//

// IBAction for Button Selection //
-(IBAction)onSelect:(id)sender
{
    // selectOne == Aeratify //
    if (sender == selectOne)
    {
        // Enable Buttons //
        selectTwo.enabled = true;
        selectThree.enabled = true;
        calculateCriticalAttackButton.enabled = true;
        // Clear TextField //
        friendNameTextField.text = @"";
        // Add Friend Name to TextField //
        friendNameTextField.text = @"Aeratify";
        // Disable Button //
        selectOne.enabled = false;
    }
    // selectTwo == Pyre //
    else if (sender == selectTwo)
    {
        // Enable Buttons //
        selectOne.enabled = true;
        selectThree.enabled = true;
        calculateCriticalAttackButton.enabled = true;
        // Clear TextField //
        friendNameTextField.text = @"";
        // Add Friend Name to TextField //
        friendNameTextField.text = @"Pyre";
        // Disable Button //
        selectTwo.enabled = false;
    }
    // selectThree == Aqueous //
    else if (sender == selectThree)
    {
        // Enable Buttons //
        selectOne.enabled = true;
        selectTwo.enabled = true;
        calculateCriticalAttackButton.enabled = true;
        // Clear TextField //
        friendNameTextField.text = @"";
        // Add Friend Name to TextField //
        friendNameTextField.text = @"Aqueous";
        // Disable Button //
        selectThree.enabled = false;
    }
}

//************************************** onChange IBAction **************************************//

// IBAction for backgroundChange 'Color' //
-(IBAction)onChange:(id)sender
{
    if (backgroundChanger != nil)
    {
        // Capture Selected Index //
        int selectedIndex = backgroundChanger.selectedSegmentIndex;
        // Change background color based on selectedIndex //
        if (selectedIndex == 0)
        {
            self.view.backgroundColor = [UIColor whiteColor];
        }
        else if (selectedIndex == 1)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
        else if (selectedIndex == 2)
        {
            self.view.backgroundColor = [UIColor greenColor];
        }
        else
        {
            // An error has occured //
        }
        
    }
}

//************************************** onLuckChange IBAction **************************************//

// IBAction for luckStepperControl //
-(IBAction)onLuckChange:(id)sender
{
    UIStepper *luckStepper = (UIStepper*)sender;
    if (luckStepper != nil)
    {
        int luckValue = luckStepper.value;
        friendLuckTextField.text = [NSString stringWithFormat:@"%d", luckValue];
    }
}

//************************************** calculateCriticalAttack IBAction **************************************//

//IBAction for Calculate Critical Attack Button //
-(IBAction)calculateCriticalAttack:(id)sender
{
    if (friendNameTextField.text == @"Aeratify")
    {
//************************************** Call and Create an Air Friend **************************************//
        airFriend *aeratify = (airFriend*)[friendFactory createFriend:AIR];
        [aeratify setAttackDamagePerHit:3];
        if (aeratify != nil)
        {
            NSLog(@"Aeratify has been created!");
            // Check calculation //
            [aeratify calculateAttack];
            // Clear TextField //
            friendNameTextField.text = @"";
            // Grab the stepper value //
            int luckSelected = luckStepperControl.value;
            // Create the calculation //
            int criticalAttack = ([aeratify totalAttack] * luckSelected);
            // Add Calculation to TextField //
            friendNameTextField.text = [NSString stringWithFormat:@"Aeratify's Critial Attack is %dhp", criticalAttack];
            // Disable Calculate Critical Attack Button //
            calculateCriticalAttackButton.enabled = false;
        }
    }
    else if (friendNameTextField.text == @"Pyre")
    {
//************************************** Call and Create an Fire Friend **************************************//
        fireFriend *pyre = (fireFriend*)[friendFactory createFriend:FIRE];
        [pyre setAttackDamagePerHit:9];
        if (pyre != nil)
        {
            NSLog(@"Pyre has been created!");
            // Check calculation //
            [pyre calculateAttack];
            // Clear TextField //
            friendNameTextField.text = @"";
            // Grab the stepper value //
            int luckSelected = luckStepperControl.value;
            // Create the calculation //
            int criticalAttack = ([pyre totalAttack] * luckSelected);
            // Add Calculation to TextField //
            friendNameTextField.text = [NSString stringWithFormat:@"Pyre's Critial Attack is %dhp", criticalAttack];
            // Disable Calculate Critical Attack Button //
            calculateCriticalAttackButton.enabled = false;
        }
    }
    else if (friendNameTextField.text == @"Aqueous")
    {
//************************************** Call and Create an Water Friend **************************************//
        waterFriend *aqueous = (waterFriend*)[friendFactory createFriend:WATER];
        [aqueous setAttackDamagePerHit:10];
        if (aqueous != nil)
        {
            NSLog(@"Aqueous has been created!");
            // Check calculation //
            [aqueous calculateAttack];
            // Clear TextField //
            friendNameTextField.text = @"";
            // Grab the stepper value //
            int luckSelected = luckStepperControl.value;
            // Create the calculation //
            int criticalAttack = ([aqueous totalAttack] * luckSelected);
            // Add Calculation to TextField //
            friendNameTextField.text = [NSString stringWithFormat:@"Aqueous' Critial Attack is %dhp", criticalAttack];
            // Disable Calculate Critical Attack Button //
            calculateCriticalAttackButton.enabled = false;
        }
    }
    else
    {
        // An error has occured //
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
