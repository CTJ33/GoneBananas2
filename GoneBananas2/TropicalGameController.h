//
//  TropicalGameController.h
//  GoneBananas2
//
//  Created by Johnson, ColtonTanner on 1/8/15.
//  Copyright (c) 2015 ColtonJ. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TropicalGameController : UIViewController

@property (weak, nonatomic) IBOutlet UIImageView *tropicalBackground;

- (IBAction)moveRight:(id)sender;

- (IBAction)moveLeft:(id)sender;

- (IBAction)beginButton:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *startButton;

@property (weak, nonatomic) IBOutlet UIImageView *backOfMonkey1;


@property (weak, nonatomic) IBOutlet UIImageView *palmTree1;

@property (weak, nonatomic) IBOutlet UIImageView *palmLeft2;

@property (weak, nonatomic) IBOutlet UIImageView *palmTree2;

@property (weak, nonatomic) IBOutlet UIImageView *palmRight2;




@end
