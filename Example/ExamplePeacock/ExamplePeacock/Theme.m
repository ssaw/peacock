//
//  Created by Raimon Lapuente on 04/05/2015.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#import "Theme.h"

@implementation Theme

+(void)applyTheme
{
    [[self class] navigationStyle];
    
    [[self class] tableStyle];
    
    [[self class] titleStyle];
    
    [[self class] cellStyle];
    
    [[self class] buttonStyle];
}

+(void)navigationStyle
{
    NSDictionary *titleTextAttributes = @{NSFontAttributeName : [[self class] titleFontWithSize:16.0f],
                                          NSForegroundColorAttributeName : [UIColor whiteColor],
                                          NSBackgroundColorAttributeName : [UIColor clearColor]};
    
    [[UINavigationBar appearance] setTitleTextAttributes:titleTextAttributes];
    
    [[UIBarItem appearance] setTitleTextAttributes:titleTextAttributes
                                          forState:UIControlStateNormal];
    
    [[UINavigationBar appearance] setBarTintColor:[UIColor blackColor]];
//    [[UINavigationBar appearance] setLYTranslucent:0];
}

+(void)tableStyle
{
    [[UITableView appearance] setBackgroundColor:[UIColor whiteColor]];
    
    UIColor *tableSeparatorColor = [UIColor grayColor];
//    [[UITableView appearance] setAppearanceSeparatorColor:tableSeparatorColor];
    
    [[UITableViewHeaderFooterView appearance] setTintColor:[UIColor blackColor]];
    [[UILabel appearanceWhenContainedIn:[UITableViewHeaderFooterView class], nil] setTextColor:[UIColor blueColor]];
}

+(void)titleStyle
{
    
}

+(void)cellStyle
{
    
}

+(void)buttonStyle
{
    
}

+(UIFont *)titleFontWithSize:(NSUInteger)size
{
    return [UIFont fontWithName:@"HelveticaNeue-Bold" size:size];
}

+(UIFont *)textFontWithSize:(NSUInteger)size
{
    return [UIFont fontWithName:@"HelveticaNeue-UltraLight" size:size];
}

@end
