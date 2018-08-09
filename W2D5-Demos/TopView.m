//
//  TopView.m
//  W2D5-Demos
//
//  Created by steve on 2017-01-19.
//  Copyright © 2017 steve. All rights reserved.
//

#import "TopView.h"

/*
 Simple CoreGraphics
 */

@implementation TopView

  // drawRect: is a system method. Never call directly. (setNeedsDisplay)
- (void)drawRect:(CGRect)rect {
  // get context first
  
  CGContextRef context = UIGraphicsGetCurrentContext();
  
  CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
  
  // create blue square
  CGContextFillRect(context, CGRectMake(100, 100, 100, 50));
  
  CGContextSetFillColorWithColor(context, [UIColor orangeColor].CGColor);
  
  // create orange ellipse
  CGContextFillEllipseInRect(context, CGRectMake(200, 200, 100, 50));
  
  // create red line
  CGContextSetLineWidth(context, 5.0);
  CGContextSetStrokeColorWithColor(context, [UIColor redColor].CGColor);
  
  CGPoint points[] = {
    CGPointMake(10, 100),
    CGPointMake(10, 200),
  };

  CGContextAddLines(context, points, 2);
  CGContextStrokeLineSegments(context, points, 2);
}


@end
