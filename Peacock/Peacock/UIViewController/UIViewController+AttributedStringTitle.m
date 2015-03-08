//
//  Created by Michael May on 28/11/2013.
//  Copyright (c) 2013 Lyst. All rights reserved.
//

#import "UIViewController+AttributedStringTitle.h"

@implementation UIViewController (AttributedStringTitle)

-(void)setAttributedTitle:(NSString*)titleText usingLabel:(UILabel*)titleView
{
    if(titleText == nil) {
        [[self navigationItem] setTitleView:nil];
        return;
    }
    
    [[self navigationItem] setTitleView:titleView];
    
    NSDictionary *titleTextAttributes = [[UINavigationBar appearance] titleTextAttributes];
    NSAttributedString *attributedTextTitle = [[NSAttributedString alloc] initWithString:titleText
                                                                              attributes:titleTextAttributes];
    
    UIColor *backgroundColor = [titleTextAttributes objectForKey:NSBackgroundColorAttributeName];
    [titleView setBackgroundColor:backgroundColor];
    
    [titleView setAttributedText:attributedTextTitle];
    [titleView setAccessibilityLabel:titleText];
    [titleView sizeToFit];
}

-(UILabel*)createTitleViewLabel
{
    UILabel *titleView = [[UILabel alloc] init];
    
    [titleView setNumberOfLines:1];
    [titleView setTextAlignment:NSTextAlignmentLeft];
    [titleView setLineBreakMode:NSLineBreakByTruncatingTail];
    
    return titleView;
}

-(void)setAttributedTitle:(NSString*)titleText
{
    UILabel *titleView = [self createTitleViewLabel];

    [self setAttributedTitle:titleText usingLabel:titleView];
}

-(void)setAttributedTitle
{
    NSString *title = [self title];
    
    if(title) {
        [self setAttributedTitle:title];
    }
}

@end
