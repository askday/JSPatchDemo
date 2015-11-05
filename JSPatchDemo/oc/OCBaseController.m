//
//  OCBaseController.m
//  CFPatchDemo
//
//  Created by askday on 15/11/4.
//  Copyright © 2015年 netease. All rights reserved.
//

#import "OCBaseController.h"

@interface OCBaseController ()

@end

@implementation OCBaseController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)loadView
{
    [super loadView];
}

//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
//{
//    NSMethodSignature *signature = [super methodSignatureForSelector:aSelector];
//    if (!signature) {
//        signature = [OCBaseController instanceMethodSignatureForSelector:aSelector];
//    }
//    return signature;
//}

//- (void)forwardInvocation:(NSInvocation *)anInvocation
//{
//    [super forwardInvocation:anInvocation];
//}

@end
