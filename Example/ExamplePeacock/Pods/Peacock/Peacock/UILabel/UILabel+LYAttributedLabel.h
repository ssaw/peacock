//
//  Created by Michael May on 25/04/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (LYAttributedLabel)

@property (nonatomic, assign, readwrite) NSLineBreakMode LYLineBreakMode UI_APPEARANCE_SELECTOR;

@property (nonatomic, assign, readwrite) NSTextAlignment LYTextAlignment UI_APPEARANCE_SELECTOR;

// The distance in points between the bottom of one line fragment and the top of the next.
//This value is always nonnegative. This value is included in the line fragment heights in the layout manager.
@property (nonatomic, assign, readwrite) CGFloat LYLineSpacing UI_APPEARANCE_SELECTOR;

-(void)setAttributedTextUsingString:(NSString *)string;

-(void)setAttributedTextUsingString:(NSString *)string
                          apparance:(id)appearance;

@property (nonatomic, assign, readwrite) BOOL LYStrikeOut UI_APPEARANCE_SELECTOR;
@end
