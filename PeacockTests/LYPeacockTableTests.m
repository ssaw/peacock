//
//  Created by Raimon Lapuente on 30/3/15.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import "UITableView+SeparatorUIAppearance.h"

@interface LYPeacockTableTests : KIFTestCase

@property (nonatomic, strong, readonly) UIViewController *SUTController;
@property (nonatomic, strong, readonly) UIWindow *window;
@property (nonatomic ,strong, readonly) UITableView *SUTTable;

@end

@implementation LYPeacockTableTests

- (void)setUp {
    [super setUp];
    
    _SUTController = [[UIViewController alloc] init];
    _SUTTable = [[UITableView alloc] init];
    [_SUTController.view addSubview:_SUTTable];
    
    _window = [[UIWindow alloc]initWithFrame:CGRectMake(0.0, 0.0, 320.0, 468.0)];
    [_window setRootViewController:self.SUTController];
}

-(void)testSeparatorColor
{
    //given
    [[UITableView appearance] setAppearanceSeparatorColor:[UIColor redColor]];
    
    //when
    [self.window makeKeyAndVisible];
    
    //then
    UIColor *separatorColor = self.SUTTable.separatorColor;
    XCTAssertEqualObjects(separatorColor, [UIColor redColor]);
}

@end
