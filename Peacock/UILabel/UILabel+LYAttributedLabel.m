//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import "UILabel+LYAttributedLabel.h"
#import "UILabel+FontAppearance.h"

@implementation UILabel (LYAttributedLabel)

#pragma mark - attributes dictionary

-(NSMutableDictionary *)LYAttributesDictionary
{
    NSAttributedString *attributedText = self.attributedText;
    NSMutableDictionary *attributes = nil;
    
    if([attributedText length] > 0) {
        NSDictionary *currentAttributes = [[self attributedText] attributesAtIndex:0 effectiveRange:NULL];
        attributes = [currentAttributes mutableCopy];
    } else {
        attributes = [NSMutableDictionary dictionary];
    }
    
    return attributes;
}


-(void)LYSetAttributesDictionary:(NSDictionary *)attributes
{
    if(attributes == nil) { attributes = @{}; }
    
    NSString *text = self.text;
    if(text == nil) { text = @""; }
    
    NSAttributedString *attributedText = [[NSAttributedString alloc] initWithString:text attributes:attributes];
    
    [self setAttributedText:attributedText];
}

#pragma mark - particular attributes

-(id)LYAttributeWithKey:(NSString *)key
{
    if(key == nil) { return nil; }
    
    NSDictionary *attributes = [self LYAttributesDictionary];
    return [attributes objectForKey:key];
}

-(void)LYSetAttributeValue:(NSObject *)attribute forKey:(NSString *)key
{
    if(key == nil) { return; }
    
    NSMutableDictionary *attributes = [self LYAttributesDictionary];
    
    if(attribute) { [attributes setObject:attribute forKey:key]; }
    else { [attributes removeObjectForKey:key]; }
    
    [self LYSetAttributesDictionary:attributes];
}

#pragma mark - paragraph styling

-(NSMutableParagraphStyle *)LYParagraphStyle
{
    NSMutableParagraphStyle *paragrahStyle = [self LYAttributeWithKey:NSParagraphStyleAttributeName];
    if([paragrahStyle isKindOfClass:[NSParagraphStyle class]]) paragrahStyle = [paragrahStyle mutableCopy];
    
    if(paragrahStyle == nil) { paragrahStyle  = [[NSMutableParagraphStyle alloc] init]; }
    
    return paragrahStyle;
}

-(void)LYSetParagraphStyle:(NSParagraphStyle *)paragraphStyle
{
    [self LYSetAttributeValue:paragraphStyle forKey:NSParagraphStyleAttributeName];
}

#pragma mark - overrides

-(void)setLYTextColor:(UIColor *)textColor
{
    [self LYSetAttributeValue:textColor forKey:NSForegroundColorAttributeName];
    [self setTextColor:textColor];
}

-(UIColor *)LYTextColor
{
    return [self LYAttributeWithKey:NSForegroundColorAttributeName];
}

#pragma mark - 

-(void)setLYFont:(UIFont *)font
{
    [self LYSetAttributeValue:font forKey:NSFontAttributeName];
    
    [self setFont:font];
}

-(UIFont *)LYFont
{
    return [self LYAttributeWithKey:NSFontAttributeName];
}

#pragma mark - 

-(void)setLYTextAlignment:(NSTextAlignment)textAlignment
{
    [self setTextAlignment:textAlignment];
}

-(NSTextAlignment)LYTextAlignment
{
    return [self textAlignment];
}

#pragma mark - line break mode

-(void)setLYLineBreakMode:(NSLineBreakMode)lineBreakMode
{
    NSMutableParagraphStyle *paragrahStyle = [self LYParagraphStyle];
    [paragrahStyle setLineBreakMode:lineBreakMode];
    
    [self LYSetParagraphStyle:paragrahStyle];
    
    [self setLineBreakMode:lineBreakMode];
}

-(NSLineBreakMode)LYLineBreakMode
{
    NSMutableParagraphStyle *paragrahStyle = [self LYParagraphStyle];
    
    return paragrahStyle.lineBreakMode;
}

#pragma mark - extensions

// AKA Line Height
-(void)setLYLineSpacing:(CGFloat)lineSpacing
{
    NSMutableParagraphStyle *paragrahStyle = [self LYParagraphStyle];
    [paragrahStyle setLineSpacing:lineSpacing];

    [self LYSetParagraphStyle:paragrahStyle];
}

-(CGFloat)LYLineSpacing
{
    NSMutableParagraphStyle *paragrahStyle = [self LYParagraphStyle];
    return [paragrahStyle lineSpacing];
}

#pragma mark - 

-(void)setAttributedTextUsingString:(NSString *)string
{
    if(string == nil){ string = @""; }
    
    NSDictionary *existingAttributes = [self LYAttributesDictionary];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:string attributes:existingAttributes];
    
    [self setAttributedText:attributedString];
}

-(void)setAttributedTextUsingString:(NSString *)string
                          apparance:(id)appearance
{
    if(string == nil) { string = @""; }

    UIColor *color = [appearance appearanceTextColor];
    UIColor *appearanceBackgroundColor = [appearance appearanceBackgroundColor];
    UIColor *appearanceHighlightedTextColor = [appearance appearanceHighlightedTextColor];
    UIFont *font = [appearance appearanceFont];
    CGFloat lineSpacing = [appearance LYLineSpacing];
    
    NSDictionary *existingAttributes = [self LYAttributesDictionary];
    NSAttributedString *attributedString = [[NSAttributedString alloc] initWithString:string attributes:existingAttributes];
    [self setAttributedText:attributedString];
    
    if(color) {
        [self setAppearanceTextColor:color];
        [self setLYTextColor:color];
    }
    
    if(appearanceBackgroundColor) { [self setAppearanceBackgroundColor:appearanceBackgroundColor]; }
    
    if(appearanceHighlightedTextColor) { [self setAppearanceHighlightedTextColor:appearanceHighlightedTextColor]; }
    
    [self setLYLineSpacing:lineSpacing];
    
    if(font) {
        [self setAppearanceFont:font];
        [self setLYFont:font];
    }
}

#pragma mark - strikeout

-(void)setLYStrikeOut:(BOOL)toStrikeout
{
    if (toStrikeout) { [self LYSetAttributeValue:@(NSUnderlineStyleThick) forKey:NSStrikethroughStyleAttributeName]; }
    else { [self LYSetAttributeValue:@(NSUnderlineStyleNone) forKey:NSStrikethroughStyleAttributeName]; }
}

-(BOOL)LYStrikeOut
{
    NSNumber *strikeOut = [self LYAttributeWithKey:NSStrikethroughStyleAttributeName];
    if(strikeOut == nil) { return NO; }
    
    return ([strikeOut isEqualToNumber:@(NSUnderlineStyleNone)] == NO);
}

@end
