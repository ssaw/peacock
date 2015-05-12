//
//  Created by Michael May on 07/01/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (FontAppearance)

@property (nonatomic, copy, readwrite) UIFont *appearanceFont UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readwrite) UIColor *appearanceTextColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readwrite) UIColor *appearanceBackgroundColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy, readwrite) UIColor *appearanceHighlightedTextColor UI_APPEARANCE_SELECTOR;

@property (nonatomic, assign, readwrite) CGFloat appearanceLineSpacingParagraphStyle UI_APPEARANCE_SELECTOR;       // note: needs attributed strings to work

@end
