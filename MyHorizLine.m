//
//  MyHorizLine.m
//  Empty Window
//
//  Created by Brendan Hinman on 7/10/13.
//  Copyright (c) 2013 Brendan Hinman. All rights reserved.
//

#import "MyHorizLine.h"

@implementation MyHorizLine

- (id)initWithCoder:(NSCoder *)decoder { self = [super initWithCoder:decoder]; if (self) {
    self.backgroundColor = [UIColor clearColor]; }
    return self; }
- (void)drawRect:(CGRect)rect {
    CGContextRef c = UIGraphicsGetCurrentContext();
    CGContextMoveToPoint(c, 0, 0);
    CGContextAddLineToPoint(c, self.bounds.size.width, 0);
    CGContextStrokePath(c);
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
