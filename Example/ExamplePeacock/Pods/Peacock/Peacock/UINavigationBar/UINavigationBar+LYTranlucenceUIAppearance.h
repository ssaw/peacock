//
//  Created by Michael May on 24/06/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationBar (LYTranlucenceUIAppearance)

@property(nonatomic,assign,getter=isLYTranslucent) NSInteger LYTranslucent NS_AVAILABLE_IOS(3_0) UI_APPEARANCE_SELECTOR;  // Default is NO on iOS 6 and earlier. Always YES if barStyle is set to UIBarStyleBlackTranslucent

@end
