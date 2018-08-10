  //
  //  BottomView.m
  //  W2D5-Demos
  //
  //  Created by steve on 2018-08-10.
  //  Copyright © 2018 steve. All rights reserved.
  //

#import "BottomView.h"
#import "LinePoint.h"
#import "Line.h"

@interface BottomView()
  //@[@[lp1, lp2,], @[]]
@property (nonatomic) NSMutableArray <Line*>*lines;
@end

@implementation BottomView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
  if (self = [super initWithCoder:aDecoder]) {
    _lines = [@[] mutableCopy];
  }
  return self;
}


#pragma mark - Responder

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  UITouch *touch = touches.anyObject;
  CGPoint locationInView = [touch locationInView:self];
    //  CGPoint previousLocationInView = [touch previousLocationInView:self];
    //  NSLog(@"%@: %@ ==> %@ ", @(__LINE__), NSStringFromCGPoint(previousLocationInView), NSStringFromCGPoint(locationInView));
    //  NSMutableArray <LinePoint*>* linePointArray = [@[] mutableCopy];
  Line *line = [[Line alloc] initWithColor:[UIColor blueColor]];
  [self.lines addObject:line];
  LinePoint *linePoint = [[LinePoint alloc] initWithPoint:locationInView];
  [line.linePoints addObject:linePoint];
  [self setNeedsDisplay];
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  UITouch *touch = touches.anyObject;
  CGPoint locationInView = [touch locationInView:self];
    //  CGPoint previousLocationInView = [touch previousLocationInView:self];
    //  NSLog(@"%@: %@ ==> %@ ", @(__LINE__), NSStringFromCGPoint(previousLocationInView), NSStringFromCGPoint(locationInView));
    //  NSMutableArray <LinePoint*>* linePointArray = [@[] mutableCopy];
    //  [self.lines addObject:linePointArray];
  LinePoint *linePoint = [[LinePoint alloc] initWithPoint:locationInView];
    //  NSMutableArray<LinePoint*>*linePointArray = self.lines.lastObject;
  Line *currentLine = self.lines.lastObject;
  [currentLine.linePoints addObject:linePoint];
  [self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect {
  UIBezierPath *path = [UIBezierPath bezierPath];
  path.lineWidth = 5;
  
  path.lineCapStyle = kCGLineCapRound;
  
    //  for (NSArray <LinePoint*>*linePointsArray in self.lines) {
    //
    //    for (LinePoint *linePoint in linePointsArray) {
    //      if (linePointsArray.firstObject == linePoint) {
    //        [path moveToPoint:linePoint.point];
    //        continue;
    //      }
    //      [path addLineToPoint:linePoint.point];
    //    }
    //  }
  
  for (Line *line in self.lines) {
    [line.color setStroke];
    for (LinePoint *linePoint in line.linePoints) {
      if (linePoint == line.linePoints.firstObject) {
        [path moveToPoint:linePoint.point];
        continue;
      }
      [path addLineToPoint:linePoint.point];
    }
  }
  
  [path stroke];
  
}




@end
