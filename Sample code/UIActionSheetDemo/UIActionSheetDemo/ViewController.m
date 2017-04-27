//
//  ViewController.m
//  UIActionSheetDemo
//
//  Created by Brian Wang on 2015/8/26.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)displaySheet:(id)sender;

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

- (IBAction)displaySheet:(id)sender {
    UIActionSheet *sheet = [[UIActionSheet alloc] initWithTitle:@"你要怎麽處理檔案呢?" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:@"載入" otherButtonTitles:@"儲存", @"刪除", nil];
    [sheet showInView:self.view];
}

// 反應使用者的動作
- (void) actionSheet:(UIActionSheet *) actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSLog(@"Button %d is pressed…", buttonIndex);
}

@end
