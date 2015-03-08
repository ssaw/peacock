//
//  Created by Michael May on 01/07/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import "UIButton+LYAttributedButton.h"

#import "UILabel+LYAttributedLabel.h"

@implementation UIButton (LYAttributedButton)

#pragma mark - attributes dictionary

// note: assumes same attributes across the whole string
-(NSMutableDictionary*)LYAttributesDictionaryForState:(UIControlState)state
{
    NSAttributedString *attributedText = [self attributedTitleForState:state];
    NSMutableDictionary *attributes = nil;
    
    if([attributedText length] > 0) {
        NSDictionary *currentAttributes = [attributedText attributesAtIndex:0 effectiveRange:NULL];
        attributes = [currentAttributes mutableCopy];
    } else {
        attributes = [NSMutableDictionary dictionary];
    }
    
    return attributes;
}

-(void)setLYAttributesDictionary:(NSDictionary*)attributes forState:(UIControlState)state
{
    if(attributes == nil) attributes = @{};
 
    NSAttributedString *currentAttributedText = [self attributedTitleForState:state];
    NSString *text = [currentAttributedText string];
    if(text == nil) text = @"";
    
    NSAttributedString *newAttributedText = [[NSAttributedString alloc] initWithString:text attributes:attributes];
    [self setAttributedTitle:newAttributedText forState:state];
}

-(void)setAttributedTitleUsingString:(NSString *)string forState:(UIControlState)state
{
    if(string == nil) string = @"";
    
    NSDictionary *attributes = [self LYAttributesDictionaryForState:state];
    NSAttributedString *title = [[NSAttributedString alloc] initWithString:string attributes:attributes];
    
    [self setAttributedTitle:title forState:state];
}

#pragma mark - particular attributes

-(id)LYAttributeWithKey:(NSString*)key forState:(UIControlState)state
{
    if(key == nil) return nil;
    
    NSDictionary *attributes = [self LYAttributesDictionaryForState:state];
    return [attributes objectForKey:key];
}

-(void)setLYAttributeValue:(NSObject*)attribute forKey:(NSString*)key state:(UIControlState)state
{
    if(key == nil) return;
    
    NSMutableDictionary *attributes = [self LYAttributesDictionaryForState:state];
    
    if(attribute) {
        [attributes setObject:attribute forKey:key];
    } else {
        [attributes removeObjectForKey:key];
    }
    
    [self setLYAttributesDictionary:attributes forState:state];
}

#pragma mark - paragraph styling

-(NSMutableParagraphStyle*)LYParagraphStyleForState:(UIControlState)state
{
    NSMutableParagraphStyle *paragrahStyle = [self LYAttributeWithKey:NSParagraphStyleAttributeName forState:state];
    if([paragrahStyle isKindOfClass:[NSParagraphStyle class]]) paragrahStyle = [paragrahStyle mutableCopy];
    
    if(paragrahStyle == nil) {
        paragrahStyle  = [[NSMutableParagraphStyle alloc] init];
    }
    
    return paragrahStyle;
}

-(void)setLYParagraphStyle:(NSParagraphStyle*)paragraphStyle forState:(UIControlState)state
{
    [self setLYAttributeValue:paragraphStyle forKey:NSParagraphStyleAttributeName state:state];
}

#pragma mark - overrides

-(void)setLYTextColor:(UIColor *)textColor forState:(UIControlState)state
{
    [self setLYAttributeValue:textColor forKey:NSForegroundColorAttributeName state:state];
}

#pragma mark -

-(void)setLYFont:(UIFont *)font forState:(UIControlState)state
{
    [self setLYAttributeValue:font forKey:NSFontAttributeName state:state];
}

#pragma mark -

-(void)setLYTextAlignment:(NSTextAlignment)textAlignment forState:(UIControlState)state
{
    NSMutableParagraphStyle *paragraphStyle = [[self LYParagraphStyleForState:state] mutableCopy];
    [paragraphStyle setAlignment:textAlignment];
    
    [self setLYParagraphStyle:paragraphStyle forState:state];
}

@end
