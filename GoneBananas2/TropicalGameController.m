//
//  TropicalGameController.m
//  GoneBananas2
//
//  Created by Johnson, ColtonTanner on 1/8/15.
//  Copyright (c) 2015 ColtonJ. All rights reserved.
//

#import "TropicalGameController.h"

@interface TropicalGameController ()

@end


int integerWidth;
int integerHeight;


int integerWidth1=70;
int integerHeight1=700;
BOOL wasBeginClicked=NO;
 NSTimer * movePalmTree;
int leftTree1Y=0;
int leftTree2Y=0;

int rightTree1Y=0;
int rightTree2y=0;

@implementation TropicalGameController
@synthesize tropicalBackground;
@synthesize palmTree1;
@synthesize palmTree2;
@synthesize palmLeft2;
@synthesize palmRight2;

@synthesize startButton;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
[self getScreenWidth];//calls int screen width

  tropicalBackground.frame=CGRectMake(0, 0, integerWidth, integerHeight);
    
    palmTree1.frame=CGRectMake(0, 0, integerWidth1, integerHeight1);
    
    palmTree2.frame=CGRectMake(200, 0, integerWidth1, integerHeight1);
    
    leftTree2Y=leftTree2Y-integerHeight1;
    palmLeft2.frame=CGRectMake(0, leftTree2Y, integerWidth1, integerHeight1);
    
    rightTree2y=rightTree2y-integerHeight1;
    palmRight2.frame=CGRectMake(0, rightTree2y, integerWidth1, integerHeight1);
    

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



- (IBAction)moveRight:(id)sender {
}

- (IBAction)moveLeft:(id)sender {
}

- (IBAction)beginButton:(id)sender {
   
    wasBeginClicked=YES;
    
    if (wasBeginClicked==YES){
        
        startButton.hidden=YES;
        
        [self moveTrees];
    }
    
    
}



-(void)moveTrees{
   
    movePalmTree=[NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(moveTheTrees) userInfo:nil repeats:YES];
    
    
    
}


-(void)moveTheTrees{
    
    leftTree1Y=leftTree1Y+10;
    leftTree2Y=leftTree2Y+10;
    if(leftTree1Y>integerHeight){
        leftTree1Y=-integerHeight;
    }
    if(leftTree2Y>integerHeight){
        leftTree2Y=-integerHeight;
    }
    
    
    rightTree1Y=rightTree1Y+10;
    rightTree2y=rightTree2y+10;
    if(rightTree1Y>integerHeight){
        rightTree1Y=-integerHeight;
    }
    
    if(rightTree2y>integerHeight){
        rightTree2y=-integerHeight;
    }
    
    
    
    
    palmTree1.frame=CGRectMake(20, leftTree1Y, integerWidth1, integerHeight1);
    palmLeft2.frame=CGRectMake(20, leftTree2Y, integerWidth1, integerHeight1);
    
    
    palmTree2.frame=CGRectMake(280, rightTree1Y, integerWidth1, integerHeight1);
    palmRight2.frame=CGRectMake(280, rightTree1Y, integerWidth1, integerHeight1);
    

}















@end
