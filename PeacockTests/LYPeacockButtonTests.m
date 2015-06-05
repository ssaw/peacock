//
//  Copyright (c) 2014-2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

#import "UIButton+LYAppearance.h"
#import "UIButton+LYAttributedButton.h"

NSString *helveticaUltrLight = @"HelveticaNeue-UltraLight";

@interface LYPeacockButtonTests : KIFTestCase

@property (nonatomic, strong, readonly) UIButton *SUTButton;
@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;

@end

@implementation LYPeacockButtonTests


- (void)setUp {
    [super setUp];
    _SUTButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [_SUTButton setAttributedTitleUsingString:@"Buton title" forState:UIControlStateNormal];
    
    _SUTController = [[UIViewController alloc] init];
    [_SUTController.view addSubview:_SUTButton];
    
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    [_window setRootViewController:self.SUTController];
}

-(void)testThatWeCanSetButtonTintColor
{
    //given
    [[UIButton appearance] setAppearanceTintColor:[UIColor redColor]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    XCTAssertEqualObjects(self.SUTButton.tintColor, [UIColor redColor]);
}

-(void)testThatWeCanSetButtonCustomFont
{
    //given
    [[UIButton appearance] setLYFont:[UIFont fontWithName:helveticaUltrLight size:20.0f] forState:UIControlStateNormal];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIFont *buttonFont = [self.SUTButton LYFontForState:UIControlStateNormal];
    XCTAssertTrue([helveticaUltrLight isEqualToString:buttonFont.fontName]);
}

-(void)testThatWeCanSetButtonCustomFontForSelectedState
{
    //given
    [[UIButton appearance] setLYFont:[UIFont fontWithName:helveticaUltrLight size:20.0f] forState:UIControlStateSelected];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIFont *buttonFont = [self.SUTButton LYFontForState:UIControlStateSelected];
    XCTAssertTrue([helveticaUltrLight isEqualToString:buttonFont.fontName]);
}

-(void)testThatWeCanSetButtonCustomColor
{
    //given
    UIColor *yellow = [UIColor yellowColor];
    [[UIButton appearance] setLYTextColor:yellow forState:UIControlStateNormal];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIColor *fontColor = [self.SUTButton LYTextColorForState:UIControlStateNormal];
    XCTAssertEqualObjects(yellow, fontColor);
}

-(void)testThatWeCanSetTextAlignment
{
    //given
    [[UIButton appearance] setLYTextAlignment:NSTextAlignmentCenter forState:UIControlStateNormal];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    XCTAssertEqual(self.SUTButton.titleLabel.textAlignment, NSTextAlignmentCenter);
}

@end
