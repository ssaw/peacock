//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import "UIButton+LYAppearance.h"

@implementation UIButton (LYAppearance)

-(UIColor*)appearanceTintColor
{
    return self.tintColor;
}

-(void)setAppearanceTintColor:(UIColor *)appearanceTintColor
{
    self.tintColor = appearanceTintColor;
}

@end
