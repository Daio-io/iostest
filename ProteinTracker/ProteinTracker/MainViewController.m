//
//  ViewController.m
//  ProteinTracker
//
//  Created by Dai Williams on 04/09/2015.
//  Copyright (c) 2015 daio. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()
@end

@implementation MainViewController

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if(self) {
        amountHistory = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addButtonPressed:(id)sender {
    total += self.addAmountField.text.intValue;
    self.totalLabel.text = [NSString stringWithFormat:@"%d", total];
    
    [amountHistory addObject:[NSNumber numberWithInt:self.addAmountField.text.intValue]];
}

- (IBAction)unwindToMain:(UIStoryboardSegue *)segue{
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showHistory"]) {
        HistoryViewController *controller = (HistoryViewController *)segue.destinationViewController;
        [controller setHistory:amountHistory];
    }
}

@end
