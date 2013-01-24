//
//  ViewController.m
//  aoc2-2.3
//
//  Created by Zachery Hernandez on 1/21/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Set IBAction for all (one) UIButtons //
-(IBAction)onClick:(id)sender
{
    if (sender == addEventButton)
    {
        addEvent *addEventViewController = [[addEvent alloc] initWithNibName:@"addEvent" bundle:nil];
        if (addEventViewController != nil)
        {
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
