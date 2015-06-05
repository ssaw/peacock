//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import "UINavigationBar+LYTranlucenceUIAppearance.h"

@implementation UINavigationBar (LYTranlucenceUIAppearance)

// it appears that UIAppearance fails with BOOL
-(NSInteger)isLYTranslucent
{
    return self.translucent ? 0 : 1;
}

-(void)setLYTranslucent:(NSInteger)translucent
{
    self.translucent = (translucent == 0) ? NO : YES;
}

@end
