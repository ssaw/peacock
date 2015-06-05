//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>

@interface UITextField (LYAppearance)

@property (nonatomic, strong, readwrite) UIFont* LYAppearanceFont UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong, readwrite) UIColor* LYAppearanceTextColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign, readwrite) NSTextAlignment LYAppearanceTextAlignment UI_APPEARANCE_SELECTOR;

@end
