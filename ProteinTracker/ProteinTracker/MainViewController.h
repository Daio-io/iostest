//
//  ViewController.h
//  ProteinTracker
//
//  Created by Dai Williams on 04/09/2015.
//  Copyright (c) 2015 daio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HistoryViewController.h"

@interface MainViewController : UIViewController {
    int total;
    NSMutableArray *amountHistory;
}
@property (weak, nonatomic) IBOutlet UILabel *totalLabel;
@property (weak, nonatomic) IBOutlet UILabel *goalLabel;
@property (weak, nonatomic) IBOutlet UITextField *addAmountField;

- (IBAction)addButtonPressed:(id)sender;
- (IBAction)unwindToMain:(UIStoryboardSegue *)segue;

@end

