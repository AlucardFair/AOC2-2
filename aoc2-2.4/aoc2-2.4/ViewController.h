//
//  ViewController.h
//  aoc2-2.4
//
//  Created by Zachery Hernandez on 1/28/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEvent.h"

@interface ViewController : UIViewController <customDelegate>
{
    // Set IBOutlet for UITextView //
    IBOutlet UITextView *eventTextView;
    // Set IBOutlet for UILabel //
    IBOutlet UILabel *swipeLabel;
    // Set IBOutlet for UIButton //
    IBOutlet UIButton *saveButton;
    
    // Set UISwipeGestureRecognizer //
    UISwipeGestureRecognizer *swipeRight;
}

// Set IBAction for all UIButtons //
-(IBAction)onClick:(id)sender;

@end
