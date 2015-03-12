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

-(void)setUp {
    [super setUp];
    _SUT = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 200.0f, 200.0f)];
    _SUTLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 0.0f, 100.0f, 40.0f)];
    [_SUT addSubview:_SUTLabel];
}

-(void)testThatWeCanSetUILabelFontName
{
    //given
    [[UILabel appearance] setAppearanceFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:20.0f]];
    
    //then
    id appearance = [[self.SUTLabel class] appearance];
    UIFont *fontFromAppearance = [appearance appearanceFont];
    XCTAssertTrue([fontFromAppearance.fontName isEqualToString:@"HelveticaNeue-UltraLight"]);
}

-(void)testThatWeCanSetUILabelFontSize
{
    //given
    [[UILabel appearance] setAppearanceFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:20.0f]];
    
    //then
    id appearance = [[self.SUTLabel class] appearance];
    UIFont *fontFromAppearance = [appearance appearanceFont];
    XCTAssertTrue(fontFromAppearance.pointSize == 20.0f);
}

-(void)testThatWeCanSetUILabelTextColor
{
    //given
    [[UILabel appearance] setAppearanceTextColor:[UIColor greenColor]];
    
    //then
    id appearance = [[self.SUTLabel class] appearance];
    XCTAssertEqualObjects([appearance appearanceTextColor], [UIColor greenColor]);
}

-(void)testThatWeCanSetUILabelBackgroundColor
{
    //given
    [[UILabel appearance] setAppearanceBackgroundColor:[UIColor redColor]];
    
    //then
    id appearance = [[self.SUTLabel class] appearance];
    XCTAssertEqualObjects([appearance appearanceBackgroundColor], [UIColor redColor]);
}

-(void)testThatWeCanSetUILabelHighlightedTextColor
{
    //given
    [[UILabel appearance] setAppearanceHighlightedTextColor:[UIColor grayColor]];
    
    //when
    [self.SUTLabel setHighlighted:YES];
    
    //then
    id appearance = [[self.SUTLabel class] appearance];
    XCTAssertEqualObjects([appearance appearanceHighlightedTextColor], [UIColor grayColor]);
}

-(void)testThatWeCanSetUILabelLineSpacingParagraphStyle
{
    //given
    [[UILabel appearance] setAppearanceLineSpacingParagraphStyle:5.0f];
    
    //then
    id appearance = [[self.SUTLabel class] appearance];
    XCTAssertEqual([appearance appearanceLineSpacingParagraphStyle], 5.0f);
}

@end
