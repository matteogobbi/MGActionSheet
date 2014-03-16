//
//  MGViewController.m
//  MGActionSheetView
//
//  Created by Matteo Gobbi on 28/11/13.
//  Copyright (c) 2013 Matteo Gobbi. All rights reserved.
//

#import "MGViewController.h"
#import "MGActionSheet.h"

@implementation MGViewController

- (IBAction)openActionSheet:(id)sender {
    
    //Initialization
    MGActionSheet *actionSheet = [[MGActionSheet alloc] initWithTitle:@"Block action sheet!" cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"Option 1", @"Option 2", @"Option 3", nil];
    
    
    //Show with completition block
    [actionSheet showInView:self.view withChoiceCompletition:^(NSInteger buttonIndex) {
        
        if(buttonIndex == actionSheet.cancelButtonIndex) NSLog(@"Cancelled");
        else if(buttonIndex == actionSheet.destructiveButtonIndex) NSLog(@"Destructed");
        else {
            NSLog(@"Option at index: %d", buttonIndex);
        }
    }];
}

@end
