//
//  Created by Raimon Lapuente on 28/3/15.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>

@interface LYPeacockNavigationBarTests : KIFTestCase

@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;

@end

@implementation LYPeacockNavigationBarTests

- (void)setUp {
    [super setUp];
    
    _SUTController = [[UIViewController alloc] init];
    
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    [_window setRootViewController:self.SUTController];
}


@end
