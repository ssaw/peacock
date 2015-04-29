//
//  Created by Michael May on 21/10/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (LYAppearance)

@property (nonatomic, strong) UIFont* LYAppearanceFont UI_APPEARANCE_SELECTOR;
@property (nonatomic, strong) UIColor* LYAppearanceTextColor UI_APPEARANCE_SELECTOR;
@property (nonatomic, assign) NSTextAlignment LYAppearanceTextAlignment UI_APPEARANCE_SELECTOR;

@end
