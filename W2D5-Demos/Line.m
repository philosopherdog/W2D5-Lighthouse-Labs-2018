//
//  Line.m
//  W2D5-Demos
//
//  Created by steve on 2018-08-10.
//  Copyright © 2018 steve. All rights reserved.
//

#import "Line.h"
#import "LinePoint.h"

@implementation Line

- (instancetype)initWithColor:(UIColor *)color {
  if (self = [super init]) {
    _color = color ? color : [UIColor orangeColor];
    self.linePoints = [@[] mutableCopy];
  }
  return self;
}

@end
