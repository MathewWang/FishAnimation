//
//  FirstViewController.m
//  FishAnimationDemo
//
//  Created by August on 15/6/25.
//  Copyright (c) 2015年 August. All rights reserved.
//

#import "FirstViewController.h"
#import "Fish.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    FishAnimation *animation = [[FishAnimation alloc] init];
    [self fish_addAnimation:animation forKey:@"test"];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self fish_removeAnimationForKey:@"test"];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
