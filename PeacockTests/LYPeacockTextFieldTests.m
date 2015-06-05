//
//  Created by Raimon Lapuente on 30/3/15.
//  Copyright (c) 2015 Lyst Engineering. All rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

#import "UITextField+LYAppearance.h"

@interface LYPeacockTextFieldTests : KIFTestCase

@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;
@property (nonatomic ,strong, readonly) UITextField *SUTTextField;
@property (nonatomic, strong, readonly) NSString *helveticaUltraLight;

@end

@implementation LYPeacockTextFieldTests

- (void)setUp {
    [super setUp];
    
    _SUTController = [[UIViewController alloc] init];
    _SUTTextField = [[UITextField alloc] init];
    [_SUTController.view addSubview:_SUTTextField];
    
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    [_window setRootViewController:self.SUTController];
    _helveticaUltraLight = @"HelveticaNeue-UltraLight";
}

-(void)testThatWeCanSetTextFieldFont
{
    //given
    [[UITextField appearance] setLYAppearanceFont:[UIFont fontWithName:self.helveticaUltraLight size:20.0f]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIFont *textFont = self.SUTTextField.font;
    XCTAssertTrue([self.helveticaUltraLight isEqualToString:textFont.fontName]);
    
}

-(void)testThatWeCanSetTextFieldColor
{
    //given
    [[UITextField appearance] setLYAppearanceTextColor:[UIColor redColor]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIColor *red = [UIColor redColor];
    XCTAssertEqualObjects(self.SUTTextField.textColor, red);
}

-(void)testThatWeCanSetTextFiledAlignment
{
    //given
    [[UITextField appearance] setLYAppearanceTextAlignment:NSTextAlignmentJustified];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    XCTAssertEqual(self.SUTTextField.textAlignment, NSTextAlignmentJustified);
}

@end
