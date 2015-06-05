//
//  Created by Michael May on 16/04/2014.
//  Copyright (c) 2014-2015 Lyst Engineering. All rights reserved. MIT Licence.
//

#import "UITableView+SeparatorUIAppearance.h"

@implementation UITableView (SeparatorUIAppearance)

#pragma mark - appearanceSeparatorColor

-(UIColor *)appearanceSeparatorColor
{
    return self.separatorColor;
}

-(void)setAppearanceSeparatorColor:(UIColor *)appearanceSeparatorColor
{
    [self setSeparatorColor:appearanceSeparatorColor];
}

@end
