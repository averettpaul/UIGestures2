//
//  ViewController.m
//  UIGestures2
//
//  Created by AVERETT BARKSDALE on 10/7/16.
//  Copyright © 2016 AVERETT BARKSDALE. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //This is the code to create the actual rectangle for the notification box.
    notificationView = [[NotificationView alloc] initWithFrame:CGRectMake(0, 0, 425, 200)];
    notificationView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:notificationView];
    
    
    //This is all the code to create a swipe down gesture.
    UISwipeGestureRecognizer *swipeDown = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    [self.view addGestureRecognizer:swipeDown];
    
    //This is the code to create the swipe up gesture.
    UISwipeGestureRecognizer *swipeUpGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeUp:)];
    swipeUpGesture.direction = UISwipeGestureRecognizerDirectionUp;
    
    [self.view addGestureRecognizer:swipeUpGesture];
}

-(void) swipeDown:(UISwipeGestureRecognizer *) recognizer {
    
    [UIView animateWithDuration:2.0 animations:^{notificationView.center = self.view.center;}];

}


- (void) swipeUp:(UIGestureRecognizer * )recognizer {
    
    [UIView animateWithDuration: 2.0 animations:^{
        
        notificationView.frame = CGRectMake(0,self.view.frame.size.height, self.view.frame.size.width,self.view.frame.size.height);
        
    }];
    
}





- (void)didReceiveMemoryWarning{
        
        [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
  

