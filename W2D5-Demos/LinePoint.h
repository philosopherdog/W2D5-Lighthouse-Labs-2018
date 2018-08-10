//
//  LinePoint.h
//  W2D5-Demos
//
//  Created by steve on 2018-08-10.
//  Copyright © 2018 steve. All rights reserved.
//

@import UIKit;

@interface LinePoint : NSObject
@property (nonatomic, readonly)CGPoint point;
- (instancetype)initWithPoint:(CGPoint)point;
@end
