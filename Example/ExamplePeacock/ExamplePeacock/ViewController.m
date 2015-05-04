//
//  Created by Raimon Lapuente on 20/04/2015.
//  Copyright (c) 2015 Lyst. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *testLabel = [[UILabel alloc] initWithFrame:CGRectMake(100.0f, 100.0f, 100.0f, 50.0f)];
    [testLabel setText:@"Example text"];
    [self.view addSubview:testLabel];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
