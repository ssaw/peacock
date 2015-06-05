//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (LYTranlucenceUIAppearance)

@property(nonatomic, assign, readwrite, getter=isLYTranslucent) NSInteger LYTranslucent NS_AVAILABLE_IOS(3_0) UI_APPEARANCE_SELECTOR;  // Default is NO on iOS 6 and earlier. Always YES if barStyle is set to UIBarStyleBlackTranslucent

@end
