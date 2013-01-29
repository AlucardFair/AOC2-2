//
//  addEvent.h
//  aoc2-2.4
//
//  Created by Zachery Hernandez on 1/29/13.
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
    // Delcare instance variable //
    id <customDelegate> delegate;
    
    // Set IBOutlet for UIButtons //
    IBOutlet UIButton *cancelButton;
    IBOutlet UIButton *closeKeyboardButton;
    // Set IBOutlet for UITextField //
    IBOutlet UITextField *eventTextField;
    // Set IBOutlet for UIDatePicker //
    IBOutlet UIDatePicker *eventDatePicker;
    // Set IBOutlet for UILabels //
    IBOutlet UILabel *errorLabel;
    IBOutlet UILabel *swipeLabel;
    
    // Set UISwipeGestureRecognizer //
    UISwipeGestureRecognizer *swipeLeft;
    
    // Set variables to capture data from UITextField and UIDatePicker //
    NSString *eventInfoString;
    NSString *eventDateString;
}

// Set properties //
@property (strong) id <customDelegate> delegate;

// Set IBAction for all UIButtons //
-(IBAction)onClick:(id)sender;

// Set IBAction for UIDatePicker //
-(IBAction)datePicked:(id)sender;

@end
