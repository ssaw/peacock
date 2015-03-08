//
//  Created by Michael May on 13/01/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

static const CGFloat LYSizeToFitTextAttributedLineSpacingDefault = 0.0f;

@interface UILabel (SizeToFitText)

-(void)LYSizeToFitText;
-(CGSize)LYGetSizeToFitText;

+(CGRect)LYRectToFitText:(NSString*)text
                   frame:(CGRect)frame
        autoresizingMask:(UIViewAutoresizing)autoresizingMask
                    font:(UIFont*)font
           lineBreakMode:(NSLineBreakMode)lineBreakMode
             lineSpacing:(CGFloat)lineSpacing;


+(CGSize)LYSizeToFitSize:(CGSize)constrainedSize
                    text:(NSString*)text
                    font:(UIFont*)font
           lineBreakMode:(NSLineBreakMode)lineBreakMode
             lineSpacing:(CGFloat)lineSpacing;

+(CGRect)LYRectToFitText:(NSString *)text
            currentFrame:(CGRect)currentFrame
        autoresizingMask:(UIViewAutoresizing)autoresizingMask
              appearance:(id)appearance;

+(CGSize)sizeForText:(NSString*)text
                font:(UIFont*)font
  constrainedToWidth:(CGFloat)totalWidth
         lineSpacing:(CGFloat)lineSpacing;

-(CGSize)LYSizeWithFont;

-(CGSize)LYSizeToFitSize:(CGSize)constrainedSize;
-(CGSize)LYSizeToFitSize:(CGSize)constrainedSize lineSpacing:(CGFloat) lineSpacing;

-(void)LYAdjustFrameSizeToFitAttributedText;

-(CGSize)LYGetSizeToFitAttributedTextWithSize:(CGSize) optionalSize;

@end
