//
//  UIViewController.m
//  JSPatchDemo
//
//  Created by askday on 15/11/5.
//  Copyright © 2015年 wx. All rights reserved.
//

#import "UIViewController+Static.h"

#import <objc/runtime.h>
#import "Aspects.h"

@implementation UIViewController (Static)
+ (void)start
{
    [UIViewController aspect_hookSelector:@selector(loadView)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> aspectInfo) {

                               } error:NULL];

    [UIViewController aspect_hookSelector:@selector(viewDidLoad)
                              withOptions:AspectPositionAfter
                               usingBlock:^(id<AspectInfo> aspectInfo) {

                               } error:NULL];

    //    [UIViewController aspect_hookSelector:@selector(viewWillAppear:)
    //                              withOptions:AspectPositionAfter
    //                               usingBlock:^(id<AspectInfo> aspectInfo, BOOL animated) {
    //
    //                               } error:NULL];
    //
    //    [UIViewController aspect_hookSelector:@selector(viewWillDisappear:)
    //                              withOptions:AspectPositionAfter
    //                               usingBlock:^(id<AspectInfo> aspectInfo, BOOL animated) {
    //
    //                               } error:NULL];
    //
    //    [UIViewController aspect_hookSelector:@selector(viewDidAppear:)
    //                              withOptions:AspectPositionAfter
    //                               usingBlock:^(id<AspectInfo> aspectInfo, BOOL animated) {
    //
    //                               } error:NULL];
    //
    //    NSString *deallocString = @"dealloc";
    //    [UIViewController aspect_hookSelector:NSSelectorFromString(deallocString)
    //                              withOptions:AspectPositionBefore
    //                               usingBlock:^(id<AspectInfo> aspectInfo) {
    //
    //                               } error:NULL];
}
@end
