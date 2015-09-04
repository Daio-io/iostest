//
//  HistoryViewController.h
//  ProteinTracker
//
//  Created by Dai Williams on 04/09/2015.
//  Copyright (c) 2015 daio. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HistoryViewController : UIViewController {
    NSMutableArray *history;
}

@property (weak, nonatomic) IBOutlet UILabel *historyLabel;

- (void)setHistory:(NSMutableArray *)historyArray;
@end
