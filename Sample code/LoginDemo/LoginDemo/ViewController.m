//
//  ViewController.m
//  LoginDemo
//
//  Created by Brian Wang on 2015/8/26.
//  Copyright (c) 2015年 MapKing. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)displayLoginAlertView:(id)sender;

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

- (IBAction)displayLoginAlertView:(id)sender {
    UIAlertView *loginAlertView = [[UIAlertView alloc] initWithTitle:@"登入系統" message:nil delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"登入", nil];
    loginAlertView.alertViewStyle = UIAlertViewStyleLoginAndPasswordInput;
    
    [loginAlertView show];
}

- (void)willPresentAlertView:(UIAlertView *)alertView {
    UITextField *usernameField = [alertView textFieldAtIndex:0];
    usernameField.placeholder = @"請輸入帳號";
    
    UITextField *passwordField = [alertView textFieldAtIndex:1];
    passwordField.placeholder = @"請輸入密碼";
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    UITextField *usernameField = [alertView textFieldAtIndex:0];
    UITextField *passwordField = [alertView textFieldAtIndex:1];
    
    switch (buttonIndex) {
        case 0:
            NSLog(@"Cancel...");
            break;
        case 1:
            NSLog(@"username=%@, password=%@", usernameField.text, passwordField.text);
            break;
        default:
            break;
    }
}


@end
