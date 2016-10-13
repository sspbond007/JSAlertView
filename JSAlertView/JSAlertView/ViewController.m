//
//  ViewController.m
//  JSAlertView
//
//  Created by Jitendra Singh on 10/12/16.
//  Copyright © 2016 Jitendra Singh. All rights reserved.
//

#import "ViewController.h"
#import "JSAlertView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [JSAlertView alert:@"Alert1"];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    [JSAlertView alert:@"This is an alert with long text to see verify that is is no appearing behind if another alert is displayed."];
    [JSAlertView alert:@"Alert3"];
    [JSAlertView alert:@"Alert with multiple buttons." withTitle:@"Alert Title" buttons:@[@"Button 1",@"Button 2",@"Button 3",@"Button 4",@"Button 5"] withCompletionHandler:^(NSInteger buttonIndex, NSString *buttonTitle) {
        NSLog(@"Pressed %@ at index %ld", buttonTitle, (long)buttonIndex);
    }];
    
    [JSAlertView confirm:@"Did you like this alert?" withCompletionHandler:^(BOOL accepted) {
        NSLog(@"%@", (accepted ? @"YES" : @"NO"));
    }];
}

@end
