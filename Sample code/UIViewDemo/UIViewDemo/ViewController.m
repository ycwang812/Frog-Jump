//
//  ViewController.m
//  UIViewDemo
//
//  Created by Brian Wang on 2015/8/24.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)clickButton:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    CGRect rect = self.view.frame;
    NSLog(@"中心點座標(%f, %f)", CGRectGetMidX(rect),  CGRectGetMidY(rect));
    NSLog(@"width=%f, height=%f)", CGRectGetMaxX(rect),  CGRectGetMaxY(rect));
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickButton:(id)sender {
    UIView *view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 200)];
    view.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1.0];
    
    [[self view] addSubview:view];
}

@end
