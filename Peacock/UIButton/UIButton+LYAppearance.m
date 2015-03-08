//
//  Created by Michael May on 01/07/2014.
//  Copyright (c) 2014 Lyst. All rights reserved.
//

#import "UIButton+LYAppearance.h"

@implementation UIButton (LYAppearance)

-(UIColor*)appearanceTintColor
{
    return self.tintColor;
}

-(void)setAppearanceTintColor:(UIColor *)appearanceTintColor
{
    self.tintColor = appearanceTintColor;
}

@end
