//
//  Created by Michael May on 13/01/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LYCGFloatSizeHelper.h"

#import "UILabel+SizeToFitText.h"
#import "UILabel+LYAttributedLabel.h"
#import "UILabel+FontAppearance.h"

@implementation UILabel (SizeToFitText)

-(CGSize)LYSizeWithFont
{
    NSString *title = [self text];
    UIFont *font = [self font];
    
    NSDictionary *attributes = @{NSFontAttributeName : font};
    CGSize size = [title sizeWithAttributes:attributes];
    
    size.width = ceil64Helper(size.width);
    size.height = ceil64Helper(size.height);
    
    return size;
}

-(CGSize)LYSizeToFitSize:(CGSize)constrainedSize
{
    return [UILabel LYSizeToFitSize:constrainedSize
                               text:[self text]
                               font:[self font]
                      lineBreakMode:[self lineBreakMode]
                        lineSpacing:LYSizeToFitTextAttributedLineSpacingDefault];
}

-(CGSize)LYSizeToFitSize:(CGSize)constrainedSize lineSpacing:(CGFloat) lineSpacing
{
    CGRect frame = CGRectZero;
    frame.size = constrainedSize;
    frame = [UILabel LYRectToFitText:self.text
                               frame:frame
                    autoresizingMask:UIViewAutoresizingFlexibleHeight
                                font:[self font]
                       lineBreakMode:NSLineBreakByWordWrapping
                         lineSpacing:lineSpacing];
    return frame.size;
}

-(void)LYSizeToFitText
{
    CGRect frame = [UILabel LYRectToFitText:[self text]
                                      frame:[self frame]
                           autoresizingMask:[self autoresizingMask]
                                       font:[self font]
                              lineBreakMode:[self lineBreakMode]
                                lineSpacing:LYSizeToFitTextAttributedLineSpacingDefault];
    
    [self setFrame:frame];
}

-(CGSize)LYGetSizeToFitText
{
    CGRect frame = [UILabel LYRectToFitText:[self text]
                                      frame:[self frame]
                           autoresizingMask:[self autoresizingMask]
                                       font:[self font]
                              lineBreakMode:[self lineBreakMode]
                                lineSpacing:LYSizeToFitTextAttributedLineSpacingDefault];
    
    return frame.size;
}

-(void)LYAdjustFrameSizeToFitAttributedText
{
    CGRect frame = [UILabel LYRectToFitText:[self text]
                                      frame:[self frame]
                           autoresizingMask:[self autoresizingMask]
                                       font:[self font]
                              lineBreakMode:[self lineBreakMode]
                                lineSpacing:[self LYLineSpacing]];
    [self setFrame:frame];
}

-(CGSize)LYGetSizeToFitAttributedTextWithSize:(CGSize) optionalSize
{
    CGSize calculatedSize = [UILabel LYSizeToFitSize:optionalSize
                                                text:[self text]
                                                font:[self font]
                                       lineBreakMode:[self lineBreakMode]
                                         lineSpacing:[self LYLineSpacing]];
    return calculatedSize;
}


#pragma mark -

+(CGSize)LYSizeToFitSize:(CGSize)constrainedSize
                    text:(NSString*)text
                    font:(UIFont*)font
           lineBreakMode:(NSLineBreakMode)lineBreakMode
             lineSpacing:(CGFloat)lineSpacing

{
    CGSize size = CGSizeZero;
    
    NSMutableParagraphStyle *paragraphStyle = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
    [paragraphStyle setAlignment:NSTextAlignmentLeft];
    [paragraphStyle setLineBreakMode:lineBreakMode];
    [paragraphStyle setLineSpacing:lineSpacing];
 
    // crashes at this point are most commonly caused by not having UIAppearance applied
    CGRect rect = [text boundingRectWithSize:constrainedSize
                                     options:NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading
                                  attributes:@{NSFontAttributeName : font,
                                               NSParagraphStyleAttributeName : paragraphStyle}
                                     context:nil];
    
    size = rect.size;
    
    size.width = ceil64Helper(size.width);
    size.height = ceil64Helper(size.height);
    
    return size;
}

+(CGRect)LYRectToFitText:(NSString *)text
            currentFrame:(CGRect)currentFrame
        autoresizingMask:(UIViewAutoresizing)autoresizingMask
              appearance:(id)appearance
{
    UIFont *font = nil;
    font = [appearance appearanceFont];

    if(font == nil) {
        font = [appearance LYFont];
    }
    
    CGFloat lineSpacing = [appearance appearanceLineSpacingParagraphStyle];
    if(lineSpacing == 0.0f) {
        lineSpacing = [appearance LYLineSpacing];
    }
    
    NSLineBreakMode lineBreakMode = [appearance LYLineBreakMode];
    
    CGRect calculatedFrame  = [self LYRectToFitText:text
                                                 frame:currentFrame
                                      autoresizingMask:autoresizingMask
                                                  font:font
                                         lineBreakMode:lineBreakMode
                                           lineSpacing:lineSpacing];
    
    return calculatedFrame;
}

+(CGRect)LYRectToFitText:(NSString*)text
                   frame:(CGRect)frame
        autoresizingMask:(UIViewAutoresizing)autoresizingMask
                    font:(UIFont*)font
           lineBreakMode:(NSLineBreakMode)lineBreakMode
             lineSpacing:(CGFloat)lineSpacing
{
    static const CGFloat LYRectToFitTextMaxWidthHeight = 4096;
    
    CGSize constrainedSize = CGSizeMake(frame.size.width, frame.size.height);
    
    if((autoresizingMask & UIViewAutoresizingFlexibleWidth) == UIViewAutoresizingFlexibleWidth) {
        constrainedSize.width = LYRectToFitTextMaxWidthHeight;
    }
    
    if((autoresizingMask & UIViewAutoresizingFlexibleHeight) == UIViewAutoresizingFlexibleHeight) {
        constrainedSize.height = LYRectToFitTextMaxWidthHeight;
    }
    
    frame.size = [self LYSizeToFitSize:constrainedSize
                                  text:text
                                  font:font
                         lineBreakMode:lineBreakMode
                           lineSpacing:lineSpacing];
    
    if((autoresizingMask & UIViewAutoresizingFlexibleWidth) != UIViewAutoresizingFlexibleWidth) {
        frame.size.width = constrainedSize.width;
    }
    
    if((autoresizingMask & UIViewAutoresizingFlexibleHeight) != UIViewAutoresizingFlexibleHeight) {
        frame.size.height = constrainedSize.height;
    }
    
    return frame;
}

+(CGSize)sizeForText:(NSString*)text
                font:(UIFont*)font
  constrainedToWidth:(CGFloat)totalWidth
         lineSpacing:(CGFloat)lineSpacing
{
    CGRect frame = CGRectZero;
    frame.size = CGSizeMake(totalWidth, 0.0f);
    
    frame = [UILabel LYRectToFitText:text
                               frame:frame
                    autoresizingMask:UIViewAutoresizingFlexibleHeight
                                font:font
                       lineBreakMode:NSLineBreakByWordWrapping
                         lineSpacing:lineSpacing];
    
    return frame.size;
}

@end
