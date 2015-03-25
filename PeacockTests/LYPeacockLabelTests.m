//
//  Created by Raimon Lapuente on 9/3/15.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import "UILabel+FontAppearance.h"

@interface LYPeacockLabelTests : KIFTestCase

@property (nonatomic, strong, readonly) UILabel *SUTLabel;
@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;

@end

@implementation LYPeacockLabelTests

-(void)setUp {
    [super setUp];
    _SUTLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 0.0f, 100.0f, 40.0f)];
    _SUTController = [[UIViewController alloc] init];
    [_SUTController.view addSubview:_SUTLabel];
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    [_window setRootViewController:self.SUTController];
}

-(void)testThatWeCanSetUILabelFontName
{
    //given
    [[UILabel appearance] setAppearanceFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:20.0f]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIFont *font = self.SUTLabel.font;
    XCTAssertTrue([font.fontName isEqualToString:@"HelveticaNeue-UltraLight"]);
}

-(void)testThatWeCanSetUILabelFontSize
{
    //given
    [[UILabel appearance] setAppearanceFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:20.0f]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIFont *font = self.SUTLabel.font;
    XCTAssertTrue(font.pointSize == 20.0f);
}

-(void)testThatWeCanSetUILabelTextColor
{
    //given
    [[UILabel appearance] setAppearanceTextColor:[UIColor greenColor]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    XCTAssertEqualObjects(self.SUTLabel.textColor, [UIColor greenColor]);
}

-(void)testThatWeCanSetUILabelBackgroundColor
{
    //given
    [[UILabel appearance] setAppearanceBackgroundColor:[UIColor redColor]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    XCTAssertEqualObjects(self.SUTLabel.backgroundColor, [UIColor redColor]);
}

-(void)testThatWeCanSetUILabelHighlightedTextColor
{
    //given
    [[UILabel appearance] setAppearanceHighlightedTextColor:[UIColor grayColor]];
    
    //when
    [self.window makeKeyAndVisible];
    [self.SUTLabel setHighlighted:YES];
    
    //then
    XCTAssertEqualObjects(self.SUTLabel.highlightedTextColor, [UIColor grayColor]);
}

-(void)testThatWeCanSetUILabelLineSpacingParagraphStyle
{
    //given
    [[UILabel appearance] setAppearanceLineSpacingParagraphStyle:5.0f];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    XCTAssertEqual(self.SUTLabel.appearanceLineSpacingParagraphStyle, 5.0f);
}

@end
