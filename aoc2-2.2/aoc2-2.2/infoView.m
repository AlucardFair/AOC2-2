//
//  infoView.m
//  aoc2-2.2
//
//  Created by Zachery Hernandez on 1/13/13.
//  Copyright (c) 2013 Zachery Hernandez. All rights reserved.
//

#import "infoView.h"

@interface infoView ()

@end

@implementation infoView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

// Set IBAction for exitButton //
-(IBAction)onExit:(id)sender
{
    // Dismiss infoView //
    // dismissModalViewController is depreciated //
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)viewDidLoad
{
    // Set background color //
    self.view.backgroundColor = [UIColor clearColor];
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
