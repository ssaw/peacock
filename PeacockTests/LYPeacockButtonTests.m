//
//  LYPeacockButtonTests.m
//  Peacock
//
//  Created by Raimon Lapuente on 26/3/15.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

#import "UIButton+LYAppearance.h"
#import "UIButton+LYAttributedButton.h"

@interface LYPeacockButtonTests : KIFTestCase

@property (nonatomic, strong, readonly) UIButton *SUTButton;
@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;

@end

@implementation LYPeacockButtonTests

- (void)setUp {
    [super setUp];
    _SUTButton = [UIButton buttonWithType:UIButtonTypeCustom];
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
    [[UIButton appearance] setLYFont:[UIFont fontWithName:@"HelveticaNeue-UltraLight" size:20.0f] forState:UIControlStateNormal];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIFont *buttonFont = [self.SUTButton LYFontForState:UIControlStateNormal];
    XCTAssertTrue([@"HelveticaNeue-UltraLight" isEqualToString:buttonFont.fontName]);
}

@end
