//
//  ViewController.m
//  Debugging
//
//  Created by Pivotal - Dev 90 on 2016-11-01.
//  Copyright © 2016 Weyland Yutani. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    /* UI debugger
        - memory address
        - active/inactive constraints
        - space bar preview
        - breakpointing in the right places
        - autoresizing mask
        - layoutSubviews, viewDidLayoutSubviews, setFrame
        - expr @import UIKit to print out things like frame, works with .lldbinit
        - chisel
        - constraintsAffectingLayoutForAxis:
        - recursiveDescription
     */
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"Hi");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    /*
     1) Click on error
     2) Got o build log
     
     A) "undefined symbol", "something cannot be found", "framework not found"
        - search build log for associated files
        - if not check scheme & target dependencies
        - if yes check linking, search paths, public/project/private header settings
     
     B) linker errors
     
     C) duplicate cymbols
        - clean
        - search for duplicate
     
     */
}

@end
