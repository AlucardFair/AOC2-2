//
//  addEvent.h
//  aoc2-2.3
//
//  Created by Zachery Hernandez on 1/22/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface addEvent : UIViewController <UITextFieldDelegate>
{
    // Set IBOutlets for UIButtons //
    IBOutlet UIButton *cancelButton;
    IBOutlet UIButton *closeKeyboardButton;
    IBOutlet UIButton *saveEventButton;
    // Set IBOutlet for UITextField //
    IBOutlet UITextField *eventTextField;
    // Set IBOutlet fo UIDatePicker //
    IBOutlet UIDatePicker *eventDatePicker;
    // Set IBOutlet for UILabel //
    IBOutlet UILabel *errorLabel;
}

// Set IBAction for all UIButtons //
-(IBAction)onClick:(id)sender;

@end
