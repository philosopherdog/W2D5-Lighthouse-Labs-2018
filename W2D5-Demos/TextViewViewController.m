//
//  TextViewViewController.m
//  W2D5-Demos
//
//  Created by steve on 2017-01-19.
//  Copyright © 2017 steve. All rights reserved.
//

#import "TextViewViewController.h"

//TODO setup delegate in IB

@interface TextViewViewController ()<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UITextView *textView;
@end

@implementation TextViewViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupTextView];
}

#pragma mark - Setup

- (void)setupTextView {
  self.textView.text = @"";
  self.textView.keyboardType = UIKeyboardTypeDefault;
}


#pragma mark - Save

- (IBAction)save:(UIBarButtonItem *)sender {
  
  
}

#pragma mark - Delegate Methods

//TODO

@end
