//
//  ViewController.m
//  HelloWorld
//
//  Created by Brian Wang on 2015/8/17.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.label.text = @"Hi!";
//    [self.label setText:@"Hi!"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    if ([self.label.text isEqualToString:@"Hello, World!"]) {
        self.label.text = @"Click button!";
    } else {
        self.label.text = @"Hello, World!";
    }
}

@end
