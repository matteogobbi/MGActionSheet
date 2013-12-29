//
//  MGActionSheet.m
//  MGActionSheetView
//
//  Created by Matteo Gobbi on 28/11/13.
//  Copyright (c) 2013 Matteo Gobbi. All rights reserved.
//

#import "MGActionSheet.h"

@interface MGActionSheet() {
    UIActionSheet *actionSheet;
}
@property (nonatomic, copy) ChoiceCallBack choiceCallBack;
@end

@implementation MGActionSheet

- (id)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... {
    self = [super init];
    if(self) {
        actionSheet = [[UIActionSheet alloc] initWithTitle:title delegate:self cancelButtonTitle:cancelButtonTitle destructiveButtonTitle:destructiveButtonTitle otherButtonTitles:nil];
        
        if (otherButtonTitles != nil) {
            [actionSheet addButtonWithTitle:otherButtonTitles];
            va_list args;
            va_start(args, otherButtonTitles);
            NSString * title = nil;
            while((title = va_arg(args, NSString*))) {
                [actionSheet addButtonWithTitle:title];
            }
            va_end(args);
        }
        
        _cancelButtonIndex = actionSheet.cancelButtonIndex;
        _destructiveButtonIndex = actionSheet.destructiveButtonIndex;
    }
    return self;
}

- (void)showInView:(UIView *)view withChoiceCompletition:(ChoiceCallBack)callBack {
    _choiceCallBack = callBack;
    [actionSheet showInView:view];
}

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    _choiceCallBack(buttonIndex);
}

@end
