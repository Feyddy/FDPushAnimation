//
//  ViewController.m
//  NavigationPushAnimation
//
//  Created by 徐忠林 on 11/01/2017.
//  Copyright © 2017 Feyddy. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"
#import "FDPushAnimation.h"
#define MainScreenWidth [UIScreen mainScreen].bounds.size.width
#define MainScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 70, MainScreenWidth - 20, 40)];
    [btn setTitle:@"点击push" forState:UIControlStateNormal];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    

    
}

- (void)btnAction {

    
    CATransition *transition = [FDPushAnimation pushAnimationWithDuration:.4 withTimingFunction:kCAMediaTimingFunctionEaseInEaseOut withType:@"cameraIrisHollowOpen" withSubType:kCATransitionFromRight withDelegate:self];
    
    
    [self.navigationController.view.layer addAnimation:transition forKey:nil];
    
    FirstViewController *firstViewController = [[FirstViewController alloc]init];
    [self.navigationController pushViewController: firstViewController animated:YES];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
