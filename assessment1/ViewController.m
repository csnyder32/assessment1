//
//  ViewController.m
//  assessment1
//
//  Created by Chris Snyder on 7/24/14.
//  Copyright (c) 2014 Chris Snyder. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()<UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *myNumber1;
@property (weak, nonatomic) IBOutlet UITextField *myNumber2;

@property (weak, nonatomic) IBOutlet UILabel *myAnswer;

@property int number;
@property int number1;
@property int answer;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myAnswer.text = @"The answer is....";
}

- (IBAction)onCalculatedButtonPressed:(id)sender {
    self.number = [[self.myNumber1 text] intValue];
    self.number1 = [[self.myNumber2 text] intValue];
    self.answer = (self.number * self.number1);
    self.myAnswer.text = [NSString stringWithFormat:@"%d", self.answer];

    if (self.answer >=0) {
        self.myAnswer.textColor = [UIColor greenColor];
    }else{
        self.myAnswer.textColor = [UIColor redColor];
    }
    [self.view endEditing:YES];

    
}

@end
