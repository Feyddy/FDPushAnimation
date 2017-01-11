//
//  FirstViewController.m
//  NavigationPushAnimation
//
//  Created by 徐忠林 on 11/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "FirstViewController.h"
#import "FDPushAnimation.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"返回" style:UIBarButtonItemStylePlain target:self action:@selector(btnAction)];
}

- (void)btnAction {
    CATransition *transition = [FDPushAnimation pushAnimationWithDuration:.4 withTimingFunction:kCAMediaTimingFunctionEaseInEaseOut withType:@"cameraIrisHollowOpen" withSubType:kCATransitionFromRight withDelegate:self];
    
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    
    [self.navigationController popViewControllerAnimated:YES];
}



@end
