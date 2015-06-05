//
//  Copyright (c) 2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

#import "UIViewController+AttributedStringTitle.h"

#import "UILabel+FontAppearance.h"
#import "UILabel+LYAttributedLabel.h"

@interface LYPeacockUIViewControllerTests : KIFTestCase

@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;
@property (nonatomic, strong, readonly) UINavigationController *SUTNavigation;
@property (nonatomic, strong, readonly) NSString *helveticaUltraLight;

@end

@implementation LYPeacockUIViewControllerTests

-(void)setUp {
    [super setUp];
    _SUTController = [[UIViewController alloc] init];
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    _SUTNavigation = [[UINavigationController alloc] initWithRootViewController:_SUTController];
    [_window setRootViewController:_SUTNavigation];
    _helveticaUltraLight = @"HelveticaNeue-UltraLight";

}


-(void)testThatWeCanSetTitleForUIViewController
{
    //given
    [[UILabel appearance] setAppearanceFont:[UIFont fontWithName:self.helveticaUltraLight size:20.0f]];

    //when
    [self.window makeKeyAndVisible];
    [self.SUTController setTitle:@"Example Title"];
    UILabel *attributedTitle = [self.SUTController setAttributedTitleForTesting];
    
    //then
    UIFont *font = attributedTitle.font;
    XCTAssertTrue([font.fontName isEqualToString:@"HelveticaNeue-UltraLight"]);
}

@end
