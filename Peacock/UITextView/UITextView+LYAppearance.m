//
//  Created by Michael May on 01/07/2014.
//  Copyright (c) 2014-2015 Lyst Engineering. All rights reserved. MIT Licence.
//

#import "UITextView+LYAppearance.h"

@implementation UITextView (LYAppearance)

#pragma mark - appearanceFont

- (void)setLYAppearanceFont:(UIFont*)font
{
    [self setFont:font];
}

-(UIFont *)LYAppearanceFont
{
    return self.font;
}

#pragma mark - appearanceTextColor

-(UIColor *)LYAppearanceTextColor
{
    return self.textColor;
}

-(void)setLYAppearanceTextColor:(UIColor *)textColor
{
    [self setTextColor:textColor];
}

#pragma mark - text alignment

-(void)setLYAppearanceTextAlignment:(NSTextAlignment)textAlignment
{
    [self setTextAlignment:textAlignment];
}

-(NSTextAlignment)LYAppearanceTextAlignment
{
    return self.textAlignment;
}

@end
