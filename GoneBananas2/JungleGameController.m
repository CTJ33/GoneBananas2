//
//  JungleGameController.m
//  GoneBananas2
//
//  Created by Johnson, ColtonTanner on 1/8/15.
//  Copyright (c) 2015 ColtonJ. All rights reserved.
//

#import "JungleGameController.h"

@interface JungleGameController ()

@end

int integerWidth;
int integerHeight;


@implementation JungleGameController
@synthesize jungleBackground;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

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
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
