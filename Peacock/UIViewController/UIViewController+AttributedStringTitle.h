//
//  Copyright (c) 2013-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AttributedStringTitleExtensions)

// you should rarely, if ever, need this; it's for other classes to build out from
-(void)setAttributedTitle:(NSString *)titleText usingLabel:(UILabel *)titleView;
@end


@interface UIViewController (MethodsForTestingOnly)

-(UILabel *)setAttributedTitleForTesting;

@end
