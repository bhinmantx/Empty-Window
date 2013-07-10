//
//  MyClass.m
//  Empty Window
//
//  Created by Brendan Hinman on 7/3/13.
//  Copyright (c) 2013 Brendan Hinman. All rights reserved.
//

#import "MyClass.h"
#import "ViewController.h"
@implementation MyClass

{
    IBOutlet UILabel* theLabel;
    ViewController* currView;

}


-(void)setActiveView:(ViewController *)newView{
    
    currView = newView;
    
}

-(void)changeLabeltoDisplayedNumber:(ViewController*)activeView{
    [theLabel setText:[NSString stringWithFormat:(@"Val of Displayed Image is %i"), [activeView getImgNum]]];
}
@end
