//
//  Copyright (c) 2015 Lyst Engineering. Some rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

#import "UITextView+LYAppearance.h"

@interface LYPeacockTextViewTests : KIFTestCase

@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;
@property (nonatomic, strong, readonly) UITextView *SUTTextView;
@property (nonatomic, strong, readonly) NSString *helveticaUltraLight;

@end

@implementation LYPeacockTextViewTests

- (void)setUp {
    [super setUp];
    _SUTController = [[UIViewController alloc] init];
    _SUTTextView = [[UITextView alloc] init];
    [_SUTController.view addSubview:_SUTTextView];
    
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    [_window setRootViewController:self.SUTController];
    
    _helveticaUltraLight = @"HelveticaNeue-UltraLight";
}

-(void)testThatWeCanSetTextViewFont
{
    //given
    [[UITextView appearance] setLYAppearanceFont:[UIFont fontWithName:self.helveticaUltraLight size:20.0f]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIFont *textFont = self.SUTTextView.font;
    XCTAssertTrue([self.helveticaUltraLight isEqualToString:textFont.fontName]);
    
}

-(void)testThatWeCanSetTextViewColor
{
    //given
    [[UITextView appearance] setLYAppearanceTextColor:[UIColor redColor]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIColor *red = [UIColor redColor];
    XCTAssertEqualObjects(self.SUTTextView.textColor, red);
}

-(void)testThatWeCanSetTextFiledAlignment
{
    //given
    [[UITextView appearance] setLYAppearanceTextAlignment:NSTextAlignmentJustified];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    XCTAssertEqual(self.SUTTextView.textAlignment, NSTextAlignmentJustified);
}

@end
