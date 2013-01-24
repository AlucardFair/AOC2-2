//
//  addEvent.h
//  aoc2-2.3
//
//  Created by Zachery Hernandez on 1/22/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

// Custom Delegate //
@protocol customDelegate <NSObject>

// Will be used in ViewController //
-(void)showEventInfo:(NSString*)eventInfo;

@end

#import <UIKit/UIKit.h>

@interface addEvent : UIViewController <UITextFieldDelegate>
{
    // Declare instance variable //
    id <customDelegate> delegate;
    
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
    
    // Set variables to capture data from UITextField and UIDatePicker //
    NSString *eventInfoString;
    NSString *eventDateString;
}

// Set properties //
@property (strong) id<customDelegate> delegate;

// Set IBAction for all UIButtons //
-(IBAction)onClick:(id)sender;

@end
