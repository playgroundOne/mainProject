//
//  ViewController.m
//  MainProject
//
//  Created by 风中云海 on 2018/11/7.
//  Copyright © 2018 FZYH_Lizhuo. All rights reserved.
//

#import "ViewController.h"
#import <A_Category/CTMediator+A.h>
//#import "CTMediator+B.h"

@interface ViewController ()


@property (nonatomic, strong) UIButton *pushAViewControllerButton;

@end

@implementation ViewController

#pragma mark - life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view addSubview:self.pushAViewControllerButton];
}

- (void)viewWillLayoutSubviews
{
    [super viewWillLayoutSubviews];

    [self.pushAViewControllerButton sizeToFit];
    [self.pushAViewControllerButton setFrame:self.view.bounds];
}

#pragma mark - event response
- (void)didTappedPushAViewControllerButton:(UIButton *)button
{
//    UIViewController *viewController = [[CTMediator sharedInstance] B_viewControllerWithContentText:@"hello world"];
    UIViewController *viewController = [[CTMediator sharedInstance] A_aViewController];
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushAViewControllerButton
{
    if (_pushAViewControllerButton == nil) {
        _pushAViewControllerButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushAViewControllerButton setTitle:@"push A view controller" forState:UIControlStateNormal];
        [_pushAViewControllerButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushAViewControllerButton addTarget:self action:@selector(didTappedPushAViewControllerButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushAViewControllerButton;
}


@end
