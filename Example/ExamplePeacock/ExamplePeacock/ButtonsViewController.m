//
//  Created by Raimon Lapuente on 06/05/2015.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import "ButtonsViewController.h"
#import "Peacock.h"

@implementation RedButtonView
//UIAppearance Placeholder
@end

@interface ButtonsViewController (
                                  )
@property (weak, nonatomic) IBOutlet UIButton *topButton;
@property (weak, nonatomic) IBOutlet UIButton *bottomButton;

@end

@implementation ButtonsViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    __strong UIButton *topButton = self.topButton;
    __strong UIButton *bottomButton = self.bottomButton;
    
    [topButton setAttributedTitleUsingString:@"Normal" forState:UIControlStateNormal];
    [topButton setAttributedTitleUsingString:@"Normal Selected" forState:UIControlStateHighlighted];
    
    [bottomButton setAttributedTitleUsingString:@"Red Normal" forState:UIControlStateNormal];
    [bottomButton setAttributedTitleUsingString:@"Green Selected" forState:UIControlStateHighlighted];
}

@end
