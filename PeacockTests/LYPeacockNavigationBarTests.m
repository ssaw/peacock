//
//  Created by Raimon Lapuente on 28/3/15.
//  Copyright (c) 2015 Lyst Engineering. All rights reserved. MIT Licence.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

#import "UINavigationBar+LYTranlucenceUIAppearance.h"

@interface LYPeacockNavigationBarTests : KIFTestCase

@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;
@property (nonatomic, strong, readonly) UINavigationController *SUTNavigation;

@end

@implementation LYPeacockNavigationBarTests

- (void)setUp {
    [super setUp];
    
    _SUTController = [[UIViewController alloc] init];
    _SUTNavigation = [[UINavigationController alloc] initWithRootViewController:_SUTController];
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    [_window setRootViewController:self.SUTController];
}

-(void)testThatWeCanSetNavigationBarTranslucent
{
    //given
    [[UINavigationBar appearance] setLYTranslucent:1];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    NSInteger translucent = self.SUTNavigation.navigationBar.translucent;
    XCTAssertTrue(translucent);
}


@end
