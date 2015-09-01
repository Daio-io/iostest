//
//  ViewController.m
//  TestApp
//
//  Created by Dai on 01/09/2015.
//  Copyright (c) 2015 Daio. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

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
        [self.messageLabel setText:@"Success!"];
    } else {
        [self.messageLabel setText:@"Incorect username or password!"];
    }
    
}

@end
