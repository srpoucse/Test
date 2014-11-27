//
//  ViewController.m
//  MultipleGestureHandler
//
//  Created by RatnaPaul on 11/26/14.
//  Copyright (c) 2014 SRP. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *gestureLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //asdsadasdasdasda
    //init
    self.gestureLabel.text = @"Try Single Tap and Double Tap Gestures - The magic is how they work together on the same view, we delay the single tap gesture to fire immediately.";
    
    [self.gestureLabel setPreferredMaxLayoutWidth:self.view.frame.size.width];
    
    UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleDoubleTap:)];
    tapGesture.numberOfTapsRequired = 2;
    [self.view addGestureRecognizer:tapGesture];

    
    UITapGestureRecognizer *singletapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    singletapGesture.numberOfTapsRequired = 1;
    [self.view addGestureRecognizer:singletapGesture];
    
    [singletapGesture requireGestureRecognizerToFail:tapGesture];
    

}


-(void)handleSingleTap:(id)gesture
{
    NSLog(@"Single Tap Gesture");
    self.gestureLabel.text = @"Voila, Single Tap Recognized";
    
    
    
}

-(void)handleDoubleTap:(id)gesture
{
    NSLog(@"Double Tap Gesture");
    self.gestureLabel.text = @"Voila, Double Tap Recognized Too";

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
