//
//  Created by Raimon Lapuente on 9/3/15.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "UILabel+FontAppearance.h"

@interface LYPeacockLabelTests : XCTestCase

@property (nonatomic, strong, readonly) UIView *SUT;
@property (nonatomic, strong, readonly) UILabel *SUTLabel;

@end

@implementation LYPeacockLabelTests

- (void)setUp {
    [super setUp];
    _SUT = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 200.0f)];
    _SUTLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 0.0f, 100.0f, 40.0f)];
    [_SUT addSubview:_SUTLabel];
}

- (void)testThatWeCanSetUILabelFontName
{
    //given
    [[UILabel appearance] setAppearanceFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:20.0f]];
    
    //then
    id appearance = [[_SUTLabel class] appearance];
    UIFont *fontFromAppearance = [appearance appearanceFont];
    XCTAssertTrue([fontFromAppearance.fontName isEqualToString:@"HelveticaNeue-UltraLight"]);
}

- (void)testThatWeCanSetUILabelFontSize
{
    //given
    [[UILabel appearance] setAppearanceFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:20.0f]];
    
    //then
    id appearance = [[_SUTLabel class] appearance];
    UIFont *fontFromAppearance = [appearance appearanceFont];
    XCTAssertTrue(fontFromAppearance.pointSize == 20.0f);
}

@end
