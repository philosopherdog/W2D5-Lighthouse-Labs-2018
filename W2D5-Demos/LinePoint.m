//
//  LinePoint.m
//  W2D5-Demos
//
//  Created by steve on 2018-08-10.
//  Copyright © 2018 steve. All rights reserved.
//

#import "LinePoint.h"

@implementation LinePoint
- (instancetype)initWithPoint:(CGPoint)point {
  if (self = [super init]) {
    _point = point;
  }
  return self;
}
@end
