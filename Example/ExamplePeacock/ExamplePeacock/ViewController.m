//
//  Created by Raimon Lapuente on 20/04/2015.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import "ViewController.h"
#import "Peacock.h"

@implementation TextLabel
//Placeholder for UIAppearance
@end

@implementation TitleLabel
//Placeholder for UIAppearance
@end

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    TextLabel *testLabel = [[TextLabel alloc] initWithFrame:CGRectMake(100.0f, 300.0f, 150.0f, 50.0f)];
    [testLabel setAttributedTextUsingString:@"Example for normal text"];
    [self.view addSubview:testLabel];
    
    TitleLabel *titleLabel = [[TitleLabel alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 200.0f, 70.0f)];
    
    [titleLabel setAttributedTextUsingString:@"This is a Title!"];
    [self.view addSubview:titleLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
