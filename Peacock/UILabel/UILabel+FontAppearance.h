//
//  Created by Michael May on 07/01/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (FontAppearance)

@property (nonatomic, copy) UIFont *appearanceFont UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy) UIColor *appearanceTextColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy) UIColor *appearanceBackgroundColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, copy) UIColor *appearanceHighlightedTextColor UI_APPEARANCE_SELECTOR;

@property (nonatomic, assign) CGFloat appearanceLineSpacingParagraphStyle UI_APPEARANCE_SELECTOR;       // note: needs attributed strings to work

@end
