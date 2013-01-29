//
//  ViewController.h
//  aoc2-2.3
//
//  Created by Zachery Hernandez on 1/21/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEvent.h"

@interface ViewController : UIViewController <customDelegate>
{
    // Set IBOutlet for UITextView //
    IBOutlet UITextView *eventTextView;
    // Set IBOutlet for UIButton //
    IBOutlet UIButton *addEventButton;
    
    NSString *capturedEvent;
}

// Set IBaction for UIButton //
-(IBAction)onClick:(id)sender;

@end
