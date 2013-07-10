//
//  MyBoundedLabel.m
//  Empty Window
//
//  Created by Brendan Hinman on 7/10/13.
//  Copyright (c) 2013 Brendan Hinman. All rights reserved.
//

#import "MyBoundedLabel.h"

@implementation MyBoundedLabel

- (void)drawTextInRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextStrokeRect(context, CGRectInset(self.bounds, 1.0, 1.0));
    [super drawTextInRect:CGRectInset(rect, 5.0, 5.0)];
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
