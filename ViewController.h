//
//  ViewController.h
//  Empty Window
//
//  Created by Brendan Hinman on 6/11/13.
//  Copyright (c) 2013 Brendan Hinman. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MyClass;
@interface ViewController : UIViewController

-(ViewController*) initWithNumber:(NSString*)nibName;
-(int)ChangeImgNumber;
-(IBAction)changeAlert;
-(int)getImgNum;
-(void) setThisClass:(MyClass*) newClass;

@end
