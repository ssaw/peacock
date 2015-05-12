//
//  Created by Michael May on 01/07/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextView (LYAppearance)

@property (nonatomic, strong, readwrite) UIFont* LYAppearanceFont UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong, readwrite) UIColor* LYAppearanceTextColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign, readwrite) NSTextAlignment LYAppearanceTextAlignment UI_APPEARANCE_SELECTOR;

@end
