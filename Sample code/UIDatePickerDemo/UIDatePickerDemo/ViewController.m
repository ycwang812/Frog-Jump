//
//  ViewController.m
//  UIDatePickerDemo
//
//  Created by Brian Wang on 2015/8/26.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // 在一開始就產生 UIDatePicker
    UIDatePicker *picker = [[UIDatePicker alloc]initWithFrame:CGRectZero];
    picker.datePickerMode = UIDatePickerModeDateAndTime;
    [picker addTarget:self action:@selector(changeDateOfPicker:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:picker];
}

// 當使用者選擇改變後會觸發的事件
- (void)changeDateOfPicker:(id) picker {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"Y/MM/dd H:mm:ss"];
    
    NSString *dateString = [dateFormatter stringFromDate:[picker date]];
    
    self.label.text = dateString;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
