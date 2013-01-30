//
//  ViewController.m
//  aoc2-2.4
//
//  Created by Zachery Hernandez on 1/28/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Setup UISwipeGestureRecognizer //
    swipeRight = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    swipeRight.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeLabel addGestureRecognizer:swipeRight];
    
    // Setup NSUserDefaults //
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    if (userDefaults != nil)
    {
        // Create NSString to pull the object for a certain key //
        NSString *savedUserDefaults = [userDefaults objectForKey:@"userEvents"];
        // Load NSUserDefaults to UITextView //
        eventTextView.text = savedUserDefaults;
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// IBAction for all UIButtons (one) //
-(IBAction)onClick:(id)sender
{
    if (sender == saveButton)
    {
        // Setup NSUserDefaults after saveButton is clicked //
        NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
        if (userDefaults != nil)
        {
            // Create NSString to save eventTextView.text //
            NSString *savedString = eventTextView.text;
            // Set key for object //
            [userDefaults setObject:savedString forKey:@"userEvents"];
            // Synchronize //
            [userDefaults synchronize];
        }
    }
}

// UISwipeGestureRcognizer for UILabel swipeLabel //
-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer
{
    if (recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        addEvent *addEventViewController = [[addEvent alloc] init];
        if (addEventViewController != nil)
        {
            // Make addEvent the delegate //
            addEventViewController.delegate = self;
            // Display addEvent //
            [self presentViewController:addEventViewController animated:true completion:nil];
        }
    }
}

// Call to bring info back from second view and display it on the first view textView //
-(void)showEventInfo:(NSString*)eventInfo
{
    // Set eventTextView.text to the string passed back from the delegate (addEvent) //
    eventTextView.text = [eventTextView.text stringByAppendingString:eventInfo];
}

@end
