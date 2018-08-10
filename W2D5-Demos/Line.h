//
//  Line.h
//  W2D5-Demos
//
//  Created by steve on 2018-08-10.
//  Copyright © 2018 steve. All rights reserved.
//

@import UIKit;
@class LinePoint;

@interface Line : NSObject
@property (nonatomic)UIColor *color;
@property (nonatomic)NSMutableArray <LinePoint*>*linePoints;
- (instancetype)initWithColor:(UIColor *)color;
@end
