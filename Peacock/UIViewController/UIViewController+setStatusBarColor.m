//
//  Created by Raimon Lapuente on 14/05/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import "UIViewController+setStatusBarColor.h"

@implementation UIViewController (setStatusBarColor)

- (void) setStatusBarColorWithStyle:(NSUInteger) style
{
    if ([[UIApplication sharedApplication] respondsToSelector:@selector(setStatusBarStyle:)]) {
        [[UIApplication sharedApplication] setStatusBarStyle:style];
    }
}

@end
