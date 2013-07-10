//
//  ViewController.m
//  Empty Window
//
//  Created by Brendan Hinman on 6/11/13.
//  Copyright (c) 2013 Brendan Hinman. All rights reserved.
//

#import "ViewController.h"
#import "MyClass.h"
@interface ViewController ()

@end

@implementation ViewController
{
    IBOutlet UILabel* theAlert;
    IBOutlet UIImageView* myImageVar;
    
    int displayedImage;
    MyClass* thisClass;
}



-(ViewController*) initWithNumber:(NSString*)nibName{
    
//    self = [[ViewController alloc] initWithNibName:@"ViewController" bundle:nil];
    self = [[ViewController alloc] initWithNibName:nibName bundle:nil];
    displayedImage = 0;
    return self;
}



- (void)setThisClass:(MyClass*) newClass{
    thisClass = newClass;
}

-(int)ChangeImgNumber{

    if (displayedImage==0) {
        displayedImage = 1;
    }
    else
    displayedImage =0;
   return displayedImage;
}








- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(int)getImgNum{
    return displayedImage;
}

////Added

- (IBAction) buttonPressed:(id) sender {
    UIAlertView* av = [[UIAlertView alloc] initWithTitle:@"Howdy!" message:@"You tapped me" delegate:nil cancelButtonTitle:@"Cool" otherButtonTitles:nil];
   

    [self changeAlert];
   
    [av show];
    
    //CGRect myImageRect = CGRectMake(0.0f, 0.0f, 320.0f, 109.0f);
  //  UIImageView *myImage = [[UIImageView alloc] initWithFrame:myImageRect];
    
    if (displayedImage == 0) {
        [myImageVar setImage:[UIImage imageNamed:@"marj.jpg"]];
        [self ChangeImgNumber];
    }
    else
    {
        //[myImageVar setImage:[UIImage imageNamed:@"marj2.jpg"]];
        
        
        myImageVar.animationImages = [NSArray arrayWithObjects:
                                      [UIImage imageNamed:@"frame1.jpg"],
                                      [UIImage imageNamed:@"frame2.jpg"],
                                      [UIImage imageNamed:@"frame3.jpg"],
                                      [UIImage imageNamed:@"frame4.jpg"], nil];
                                                                        
        myImageVar.animationDuration=2;
        myImageVar.animationRepeatCount=5;
        [myImageVar startAnimating];
        [self ChangeImgNumber];
    }
    [thisClass changeLabeltoDisplayedNumber:(self)];
    myImageVar.opaque = YES;
}

-(IBAction)changeAlert{
    [theAlert setText:[NSString stringWithFormat:@"Marjory Loves Brendie"]];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
