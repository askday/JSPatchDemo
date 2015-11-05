//
//  OCViewController.m
//  CFPatchDemo
//
//  Created by askday on 15/10/30.
//  Copyright © 2015年 netease. All rights reserved.
//

#import "OCViewController.h"
#import "OCView.h"
#import "OCView+test.h"

@interface OCViewController ()
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) OCView *ocView;
@end

@implementation OCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.ocView = [[OCView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:self.ocView];

    self.button = [UIButton buttonWithType:UIButtonTypeCustom];
    self.button.frame = CGRectMake(40, 80, 100, 60);
    self.button.backgroundColor = [UIColor grayColor];
    [self.button setTitle:@"test" forState:UIControlStateNormal];
    [self.button addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)btnClick
{
    if (self.ocView) {
        [self.ocView removeFromSuperview];
        self.ocView = nil;
    }
    else {
        self.ocView = [[OCView alloc] initWithFrame:self.view.bounds];
        [self.view insertSubview:self.ocView belowSubview:self.button];
    }
}

///**
// *  手动添加这个函数可以运行成功，
// *  但是当js脚本中添加 self.ORIGviewDidLoad()会进入死循环导致崩溃
// *  如果没有这个函数直接崩溃在JPForwardInvocation中
// *  @param anInvocation
// */
//- (void)forwardInvocation:(NSInvocation *)anInvocation
//{
//    [super forwardInvocation:anInvocation];
//}

@end
