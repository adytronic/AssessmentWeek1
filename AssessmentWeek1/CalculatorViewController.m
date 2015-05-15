//
//  ViewController.m
//  AssessmentWeek1
//
//  Created by Adriana Jimenez Mangas on 5/15/15.
//  Copyright (c) 2015 Adriana Jimenez Mangas. All rights reserved.
//

#import "CalculatorViewController.h"
#import "WebViewController.h"

@interface CalculatorViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *firstOperandTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondOperandTextField;
@property int result;

@property (weak, nonatomic) IBOutlet UIBarButtonItem *webButton;
@end

@implementation CalculatorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Answer";
    self.webButton.enabled = NO;
}


- (IBAction)onCalculateButton:(UIButton *)sender {
    // multiplication
    self.result = [self.firstOperandTextField.text intValue] * [self.secondOperandTextField.text intValue];
    self.title = [NSString stringWithFormat:@"%d", self.result];

    // keyboard hides
    [self.firstOperandTextField resignFirstResponder];
    [self.secondOperandTextField resignFirstResponder];

    // toggle enable-disable webButton
    if ((self.result % 5) == 0) {
        self.webButton.enabled = YES;
    } else {
        self.webButton.enabled = NO;
    }
}


// passing data
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    WebViewController *webVC = [segue destinationViewController];
    webVC.result = self.result;
}

@end









