//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import "UILabel+FontAppearance.h"
#import "UILabel+LYAttributedLabel.h"

@implementation UILabel (FontAppearance)

#pragma mark - appearanceFont

- (void)setAppearanceFont:(UIFont *)font
{
    [self setFont:font];
}

-(UIFont *)appearanceFont
{
    return self.font;
}

#pragma mark - appearanceTextColor

-(UIColor *)appearanceTextColor
{
    return self.textColor;
}

-(void)setAppearanceTextColor:(UIColor *)appearanceTextColor
{
    [self setTextColor:appearanceTextColor];
}

#pragma mark - appearanceBackgroundColor

-(UIColor *)appearanceBackgroundColor
{
    return self.backgroundColor;
}

-(void)setAppearanceBackgroundColor:(UIColor *)appearanceTextColor
{
    [self setBackgroundColor:appearanceTextColor];
}

#pragma mark - 

-(void)setAppearanceHighlightedTextColor:(UIColor *)textColor
{
    [self setHighlightedTextColor:textColor];
}

-(UIColor *)appearanceHighlightedTextColor
{
    return self.highlightedTextColor;
}

#pragma mark - 

-(CGFloat)appearanceLineSpacingParagraphStyle
{
    return [self LYLineSpacing];
}

-(void)setAppearanceLineSpacingParagraphStyle:(CGFloat)appearanceLineSpacingParagraphStyle
{
    [self setLYLineSpacing:appearanceLineSpacingParagraphStyle];
}

@end
