//
//  ViewController.m
//  GoneBananas2
//
//  Created by Johnson, ColtonTanner on 1/7/15.
//  Copyright (c) 2015 ColtonJ. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

int integerWidth;
int integerHeight;

@implementation ViewController
@synthesize jungleBackground;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.


    [self getScreenWidth];//calls int screen width



    jungleBackground.frame=CGRectMake(0, 0, integerWidth, integerHeight);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




-(void)getScreenWidth{
    
    CGRect screenBound = [[UIScreen mainScreen] bounds];
    CGSize screenSize = screenBound.size;
    CGFloat screenWidth = screenSize.width;
    CGFloat screenHeight = screenSize.height;
    integerWidth = (int) roundf(screenWidth);
    integerHeight = (int) roundf(screenHeight);
    
}








- (IBAction)playbutton1:(id)sender {
}

- (IBAction)soundbutton:(id)sender {
}

- (IBAction)podium:(id)sender {
}

- (IBAction)shoppingcart:(id)sender {
}

- (IBAction)coconutbutton:(id)sender {
}

- (IBAction)coconuts:(id)sender {
}
@end
