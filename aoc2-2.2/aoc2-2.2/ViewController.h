//
//  ViewController.h
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/13/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "infoView.h"
#import "friendFactory.h"

@interface ViewController : UIViewController
{
    // Set UITextField IBOutlets //
    IBOutlet UITextField *friendNameTextField;
    IBOutlet UITextField *friendLuckTextField;
    // Set UIButton IBOutlets //
    IBOutlet UIButton *selectOne;
    IBOutlet UIButton *selectTwo;
    IBOutlet UIButton *selectThree;
    IBOutlet UIButton *calculateCriticalAttackButton;
    // Set UISelectedControl IBOutlet //
    IBOutlet UISegmentedControl *backgroundChanger;
    // Set UIStepper IBOutlet //
    IBOutlet UIStepper *luckStepperControl;
}

// Set IBAction for Button Selection //
-(IBAction)onSelect:(id)sender;

// Set IBAction for infoButton //
-(IBAction)onInfo:(id)sender;

// Set IBAction for backgroundChanger //
-(IBAction)onChange:(id)sender;

// Set IBAction for luckStepper //
-(IBAction)onLuckChange:(id)sender;

// Set IBAction for Critical Attack Calculation //
-(IBAction)calculateCriticalAttack:(id)sender;

@end
