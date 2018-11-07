//
//  Target_B.m
//  MainProject
//
//  Created by 风中云海 on 2018/11/7.
//  Copyright © 2018 FZYH_Lizhuo. All rights reserved.
//

#import "Target_B.h"
#import "BViewController.h"

@implementation Target_B

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    BViewController *viewController = [[BViewController alloc] initWithContentText:contentText];
    return viewController;
}

@end
