//
//  MyClass.h
//  Empty Window
//
//  Created by Brendan Hinman on 7/3/13.
//  Copyright (c) 2013 Brendan Hinman. All rights reserved.
//

#import <Foundation/Foundation.h>
@class ViewController;
@interface MyClass : NSObject

-(void)setActiveView:(ViewController*)newView;
-(void)changeLabeltoDisplayedNumber:(ViewController*)activeView;
@end
