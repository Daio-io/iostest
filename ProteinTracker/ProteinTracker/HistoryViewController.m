//
//  HistoryViewController.m
//  ProteinTracker
//
//  Created by Dai Williams on 04/09/2015.
//  Copyright (c) 2015 daio. All rights reserved.
//

#import "HistoryViewController.h"

@interface HistoryViewController ()

@end

@implementation HistoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableString *text = [[NSMutableString alloc] init];
    for (NSNumber *n in history) {
        [text appendFormat:@"%@\n", n];
    }
    
    self.historyLabel.text = text;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setHistory:(NSMutableArray *)historyArray {
    history = historyArray;
}

@end
