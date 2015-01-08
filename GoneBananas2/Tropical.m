//
//  Tropical.m
//  GoneBananas2
//
//  Created by Johnson, ColtonTanner on 1/8/15.
//  Copyright (c) 2015 ColtonJ. All rights reserved.
//

#import "Tropical.h"

@interface Tropical ()

@end



int integerWidth;
int integerHeight;


@implementation Tropical
@synthesize tropicalBackground;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self getScreenWidth];//calls int screen width

    
    
    tropicalBackground.frame=CGRectMake(0, 0, integerWidth, integerHeight);
    
    
    
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









- (IBAction)playbutton:(id)sender {
}

- (IBAction)soundbutton:(id)sender {
}

- (IBAction)podiumbutton:(id)sender {
}

- (IBAction)shoppingcart:(id)sender {
}

- (IBAction)treebutton:(id)sender {
}
@end
