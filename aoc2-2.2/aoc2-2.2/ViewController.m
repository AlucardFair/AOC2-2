//
//  ViewController.m
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/13/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "ViewController.h"
#import "infoView.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)onInfo:(id)sender
{
    // Display infoView (Alloc and Init) //
    infoView *infoController = [[infoView alloc] initWithNibName:@"infoView" bundle:nil];
    if (infoController != nil)
    {
        // presentModalViewController is depreciated //
        [self presentViewController:infoController animated:true completion:nil];
    }
}

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

@end
