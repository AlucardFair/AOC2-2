//
//  addEvent.m
//  aoc2-2.4
//
//  Created by Zachery Hernandez on 1/29/13.
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
    // Clear the error label //
    errorLabel.text = @"";
    
    // Hide the closeKeyboardButton //
    closeKeyboardButton.hidden = true;
    
    // Add Listener for the keyboard (Show) //
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object:nil];
    
    // Add Listener for the keyboard (Hide) //
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object:nil];
    
    // Setup UISwipeGestureRecognizer //
    swipeLeft = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeLeft.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLabel addGestureRecognizer:swipeLeft];
    
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

// IBAction for all UIButtons (two) //
-(IBAction)onClick:(id)sender;
{
    if (sender == cancelButton)
    {
        [self dismissViewControllerAnimated:true completion:nil];
    }
    else if (sender == closeKeyboardButton)
    {
        [eventTextField resignFirstResponder];
    }
}

// UISwipeGestureRcognizer for UILabel swipeLabel //
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionLeft)
    {
        if ([eventTextField.text isEqualToString:@""])
        {
            errorLabel.text = @"Please enter an Event Name.";
        }
//        else if (eventDateString != nil)   <-- This block is causing a crash (selected date). Will fix shortly.
//        {
//            // Make sure error label stays hidden //
//            errorLabel.text = @"";
//            
//            // Format Event Name //
//            NSString *eventInfoNameFormat = [NSString stringWithFormat:@"New Event: %@\n%@\n", eventTextField.text, eventDateString];
//            
//            // Add Info to ViewController textView //
//            [delegate showEventInfo:eventInfoNameFormat];
//            
//            NSLog(@"%@", eventDateString);
//            
//            [self dismissViewControllerAnimated:true completion:nil];
//        }
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
            NSString *eventInfoNameFormat = [NSString stringWithFormat:@"New Event: %@\n%@\n\n", eventTextField.text, eventDateString];
            
            // Add Info to ViewController textView //
            [delegate showEventInfo:eventInfoNameFormat];
            
            NSLog(@"%@", eventInfoNameFormat);
            
            // Dismiss the view //
            [self dismissViewControllerAnimated:true completion:nil];
        }
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

// IBAction for UIDatePicker //
-(IBAction)datePicked:(id)sender
{
    // Cast UIDAtePicker //
    UIDatePicker *datePicker = (UIDatePicker*)sender;
    if (datePicker != nil)
    {
        // Set variable to datePicker.date //
        NSDate *date = datePicker.date;
        
        if (date != nil)
        {
            // Format Date //
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateFormat:@"EEE, MMM d, yyyy, h:mm a"];
            
            eventDateString = [dateFormat stringFromDate:date];
        }
    }
}

@end
