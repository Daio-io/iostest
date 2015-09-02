//
//  ViewController.h
//  TestApp
//
//  Created by Dai on 01/09/2015.
//  Copyright (c) 2015 Daio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic, strong) NSString *username;
@property (nonatomic, strong) NSString *password;
@property (weak, nonatomic) IBOutlet UITextField *usernameTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

- (IBAction)loginPressed:(id)sender;


@end

