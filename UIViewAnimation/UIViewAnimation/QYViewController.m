//
//  QYViewController.m
//  UIViewAnimation
//
//  Created by qingyun on 15-4-2.
//  Copyright (c) 2015年 hnqingyun.com. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()
@property (weak, nonatomic) IBOutlet UIView *cstView;

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)startAnimation:(id)sender {
    
//    [UIView animateWithDuration:0.5 delay:1 options:UIViewAnimationOptionCurveEaseIn animations:^{
//        _cstView.alpha = 0;
//    } completion:^(BOOL finished) {
//        [UIView animateWithDuration:0.5 animations:^{
//            _cstView.alpha = 1;
//        }];
//    }];
    
    [UIView animateWithDuration:0.8 delay:0 usingSpringWithDamping:0.2 initialSpringVelocity:0.3 options:0 animations:^{
        _cstView.center = CGPointMake(160, 300);
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.3 delay:0.5 options:0 animations:^{
            _cstView.center = CGPointMake(160, 175);
        } completion:^(BOOL finished) {

        }];
    }];
    
}

@end
