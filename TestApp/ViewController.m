//
//  ViewController.m
//  TestApp
//
//  Created by Dai on 01/09/2015.
//  Copyright (c) 2015 Daio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.username = @"someuser";
    self.password = @"password";
}

- (IBAction)loginPressed:(id)sender {
    BOOL userMatch = [self.username isEqualToString:[self.usernameTextField text]];
    BOOL passwordMatch = [self.password isEqualToString:[self.passwordTextField text]];
    
    if (userMatch && passwordMatch){
        self.messageLabel.text = @"Success!";
    } else {
        self.messageLabel.text = @"Incorect username or password!";
    }
    
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

@end
