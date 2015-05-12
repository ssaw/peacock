//
//  Created by Michael May on 28/11/2013.
//  Copyright (c) 2013 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (AttributedStringTitleExtensions)

// you should rarely, if ever, need this; it's for other classes to build out from
-(void)setAttributedTitle:(NSString *)titleText usingLabel:(UILabel *)titleView;
@end


@interface UIViewController (MethodsForTestingOnly)

-(UILabel *)setAttributedTitleForTesting;

@end
