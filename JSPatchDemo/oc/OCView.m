//
//  OCView.m
//  CFPatchDemo
//
//  Created by askday on 15/10/30.
//  Copyright © 2015年 netease. All rights reserved.
//

#import "OCView.h"

@implementation OCView

+ (void)classFunc
{
    NSLog(@"this is a class func");
}

+ (void)classFunc:(int)num
{
    NSLog(@"this is a class func %d", num);
}

- (void)dealloc
{
    NSLog(@"ocview dealloc %@", self);
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.backgroundColor = [UIColor clearColor];
    }
    return self;
}

- (void)patch
{
    NSLog(@"this is origin func");
    [self showInfo:@"test a func with params"];
    int result = [self testReturnFunc];
    NSLog(@"result:%d", result);
}

- (void)patch:(NSString *)str
{
    NSLog(@"this is origin func with param : %@", str);
}

- (void)showInfo:(NSString *)info
{
    NSLog(@"%@", info);
}

- (int)testReturnFunc
{
    NSLog(@"this is a orgin test func with no param");
    return 0;
}

- (int)testReturnFunc:(NSString *)str
{
    NSLog(@"this is a orgin test func with param:%@", str);
    return (int)str.length;
}

- (void)useBlock
{
    [self testBlock:^{
      NSLog(@"print do somthing in block");
    }];
}

- (void)testBlock:(void (^)())successBlock
{
    if (successBlock) {
        successBlock();
    }
}

@end
