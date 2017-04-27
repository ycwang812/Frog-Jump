//
//  ViewController.m
//  UIAlertViewDemo
//
//  Created by Brian Wang on 2015/8/24.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)displayAlertView:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)displayAlertView:(id)sender {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Alert View Demo" message:@"請選擇" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"儲存", @"載入", nil];
    
    [alertView show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    switch (buttonIndex) {
        case 0:
            NSLog(@"Cancel...");
            break;
        case 1:
            NSLog(@"Save...");
            break;
        case 2:
            NSLog(@"Load...");
            break;
        default:
            break;
    }
}

@end
