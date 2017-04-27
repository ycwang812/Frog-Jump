//
//  ViewController.m
//  TouchDemo
//
//  Created by Brian Wang on 2015/8/24.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

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

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
//    UITouch *touch = [[touches allObjects] objectAtIndex:0];
    
    CGPoint location = [touch locationInView:self]; // 取得觸碰點
    
    if ([touch tapCount] == 2) { // 若輕拍兩下
        
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    int count = [touches count];
    
    switch(count) {
        case 3:
            blueColor = (blueColor > 1) ? 0 : blueColor + 0.05;
        case 2:
            greenColor = (greenColor > 1) ? 0 : greenColor + 0.05;
        case 1:
            redColor = (redColor > 1) ? 0 : redColor + 0.05;
        default:
            break;
    }
    
    self.view.backgroundColor = [UIColor colorWithRed:redColor green:greenColor blue:blueColor alpha:1.0];
}

@end
