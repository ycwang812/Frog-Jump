//
//  ViewController.m
//  UIPickerViewDemo
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
    
    [self prepareData];
    
    UIPickerView *picker = [[UIPickerView alloc]initWithFrame:CGRectZero];
    picker.transform = CGAffineTransformMakeTranslation(0, 50);
    picker.delegate = self;
    picker.showsSelectionIndicator = YES;
    [picker selectRow:0 inComponent:0 animated:YES];
    [picker selectRow:0 inComponent:1 animated:YES];
    
    [self.view addSubview:picker];
}

- (void)prepareData {
    data = [[NSMutableDictionary alloc] init];
    [data setValue:[NSArray arrayWithObjects:@"可樂", @"沙士", @"果汁", @"其他", nil] forKey:@"飲料"];
    [data setValue:[NSArray arrayWithObjects:@"蛋糕", @"糖果", @"巧克力", @"其他", nil] forKey:@"甜點"];
    keys = [[data allKeys]
           sortedArrayUsingComparator:(NSComparator)^(id obj1, id obj2) {
               return [obj1 caseInsensitiveCompare:obj2];
           }];
}

// 當使用者選中某個 component 內的某筆資料時
- (void)pickerView:(UIPickerView *)thePickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    if(component == 0) {
        // 重新載入 component = 1 的畫面
        [thePickerView reloadComponent:1];
    } else {
        NSString *key = [keys objectAtIndex:[thePickerView selectedRowInComponent:0]]; // 飲料或甜點
        NSArray *array = [data objectForKey:key];
        self.label.text = [array objectAtIndex:[thePickerView selectedRowInComponent:1]];
    }
}

// 設定滾輪總共有幾個欄位
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)thePickerView {
    return 2;
}

//設定滾輪總共有幾個項目
- (NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    if(component == 0) {
        return [keys count];
    } else {
        NSString *key = [keys objectAtIndex:[thePickerView selectedRowInComponent:0]]; // 飲料或甜點
        NSArray *array = [data objectForKey:key];
        return [array count];
    }
}

// 設定滾輪顯示的文字
- (NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    if(component == 0) {
        return[keys objectAtIndex:row];
    } else {
        NSString *key = [keys objectAtIndex:[thePickerView selectedRowInComponent:0]]; // 飲料或甜點
        NSArray *array = [data objectForKey:key];
        return [array objectAtIndex:row];
    }
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.label = nil;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
