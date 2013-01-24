//
//  addEvent.m
//  aoc2-2.3
//
//  Created by Zachery Hernandez on 1/22/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "addEvent.h"

@interface addEvent ()

@end

@implementation addEvent
// Set getters and setters //
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    // Checking delegate - This is where my iss lies - I cannot seem to get it to become an object //
    if (delegate != nil)
    {
        NSLog(@"Good");
    }
    else if (delegate == nil)
    {
        NSLog(@"You have a problem");
    }
    
    // Clear the error label //
    errorLabel.text = @"";
    
    // Hide the closeKeyboardButton //
    closeKeyboardButton.hidden = true;
    
    // Add Listener for the keyboard (Show) //
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    // Add Listener for the keyboard (Hide) //
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    // Set minimum date for current date //
    eventDatePicker.minimumDate = [[NSDate alloc] initWithTimeIntervalSinceNow:(NSTimeInterval)0];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Set IBAction for all (three) UIButtons //
-(IBAction)onClick:(id)sender
{
    // Check to see which button is pressed //
    if (sender == cancelButton)
    {
        // Dismiss the view //
        [self dismissViewControllerAnimated:true completion:nil];
    }
    else if (sender == closeKeyboardButton)
    {
        // Close the keyboard //
        [eventTextField resignFirstResponder];
    }
    else if (sender == saveEventButton)
    {
        if ([eventTextField.text isEqualToString:@""])
        {
            // Display errorLabel //
            errorLabel.text = @"Please enter an Event Name.";
        }
        else 
        {
            // Make sure error label stays hidden //
            errorLabel.text = @"";
            
            // Format Date //
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateFormat:@"EEE, MMM d, yyyy, h:mm a"];
            
            // Grab current date //
            NSDate *currentDate = [NSDate date];
            eventDateString = [dateFormat stringFromDate:currentDate];
            
            // Format Event Name //
            NSString *eventInfoNameFormat = [NSString stringWithFormat:@"New Event: %@\n%@\n", eventTextField.text, eventDateString];
            
            // Add Info to ViewController textView //
            [delegate showEventInfo:eventInfoNameFormat];
            
            NSLog(@"%@", eventInfoNameFormat);
            
            // Dismiss the view //
            [self dismissViewControllerAnimated:true completion:nil];
        }
    }
    else
    {
        // An error has occured //
    }
}

// When the keyboard displays //
-(void)keyboardWillShow:(NSNotification *)notification
{
    closeKeyboardButton.hidden = false;
}

// When the keyboard dismisses //
-(void)keyboardWillHide:(NSNotification *)notification
{
    closeKeyboardButton.hidden = true;
}

@end
