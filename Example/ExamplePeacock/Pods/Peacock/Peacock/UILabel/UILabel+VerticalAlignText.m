//
//  Created by Raimon Lapuente on 01/04/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import "UILabel+VerticalAlignText.h"
#import "tgmath.h"

@implementation UILabel (VerticalAlignText)

- (void) setText:(NSString *) text withBaselineOffset:(CGFloat) offset
{
    if (text == nil) {return;}
    
    NSDictionary *offsetAttrbute = @{ NSBaselineOffsetAttributeName : @(offset)};
    [self setText:text withAttributes:offsetAttrbute];
}

- (void) setText:(NSString *)text withAttributes:(NSDictionary *)offset
{
    if (text == nil) {
        return;
    } else if (offset == nil) {
        [self setText:text];
    } else {
        NSMutableAttributedString *str = [[NSMutableAttributedString alloc] initWithString:text];
        [str addAttributes:offset range:NSMakeRange(0, str.length)];
        [self setAttributedText:str];
    }
}

@end
