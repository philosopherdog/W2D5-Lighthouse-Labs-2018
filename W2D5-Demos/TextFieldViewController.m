//
//  TextFieldViewController.m
//  W2D5-Demos
//
//  Created by steve on 2017-01-19.
//  Copyright © 2017 steve. All rights reserved.
//

#import "TextFieldViewController.h"



@interface TextFieldViewController ()<UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *label;
/*
 TODO
 - Add UITextField
 - Add save button
 - UITextfieldDelegate
 - Add label to output to
 
 */

@end

@implementation TextFieldViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  [self setupTextField];
  self.label.text = @"";
}

#pragma mark - Setup

- (void)setupTextField {
  //TODO set the keyboard type, clearMode
  // Add UITextFieldTextDidChangeNotification
  self.textField.delegate = self;
  self.textField.keyboardType = UIKeyboardTypeDefault;
  self.textField.clearButtonMode = UITextFieldViewModeWhileEditing;
  [NSNotificationCenter.defaultCenter addObserver:self selector:@selector(textDidChange) name:UITextFieldTextDidChangeNotification object:self.textField];
}

- (void)textDidChange {
  self.label.text = self.textField.text;
}

#pragma mark - Actions

//TODO create saveButton action
- (IBAction)saveTapped:(UIButton *)sender {
  [self.textField resignFirstResponder];
  NSString *text = self.textField.text;
  self.label.text = text;
  NSLog(@"%@", text);
}


#pragma mark - TextFieldDelegate

//TODO add delegate methods

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
  return YES;
}
- (void)textFieldDidBeginEditing:(UITextField *)textField {
  
}
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
  return YES;
}
- (void)textFieldDidEndEditing:(UITextField *)textField {
  
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
  if ([string isEqualToString:@"!"]) {
    return NO;
  }
  return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
  return YES;
}

- (void)dealloc {
  [NSNotificationCenter.defaultCenter removeObserver:self];
}


@end
