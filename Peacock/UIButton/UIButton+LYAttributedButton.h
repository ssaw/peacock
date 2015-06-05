//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>

@interface UIButton (LYAttributedButton)

//HOW TO:
//This category relies on the usage of AttributedStrings, when using it the text of the UIButton sublass needs to be set using setAttributedTitle:
-(void)setLYFont:(UIFont *)font forState:(UIControlState)state UI_APPEARANCE_SELECTOR;
-(UIFont *)LYFontForState:(UIControlState)state UI_APPEARANCE_SELECTOR;

-(void)setLYTextColor:(UIColor *)textColor forState:(UIControlState)state UI_APPEARANCE_SELECTOR;
-(UIColor *)LYTextColorForState:(UIControlState)state UI_APPEARANCE_SELECTOR;

-(void)setLYTextAlignment:(NSTextAlignment)textAlignment forState:(UIControlState)state UI_APPEARANCE_SELECTOR;

-(void)setAttributedTitleUsingString:(NSString *)string forState:(UIControlState)state;

@end
