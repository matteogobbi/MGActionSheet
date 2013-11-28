//
//  MGActionSheet.h
//  MGActionSheetView
//
//  Created by Matteo Gobbi on 28/11/13.
//  Copyright (c) 2013 Matteo Gobbi. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^ChoiceCallBack)(int);

@interface MGActionSheet : NSObject <UIActionSheetDelegate>

@property (nonatomic) NSInteger cancelButtonIndex;
@property (nonatomic) NSInteger destructiveButtonIndex;

- (id)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle otherButtonTitles:(NSString *)otherButtonTitles, ... NS_REQUIRES_NIL_TERMINATION;

- (void)showInView:(UIView *)view withChoiceCompletition:(ChoiceCallBack)callBack;

@end
