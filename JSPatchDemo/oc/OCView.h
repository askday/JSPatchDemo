//
//  OCView.h
//  CFPatchDemo
//
//  Created by askday on 15/10/30.
//  Copyright © 2015年 netease. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface OCView : UIView

+ (void)classFunc;

+ (void)classFunc:(int)num;

- (void)patch;
- (void)patch:(NSString *)str;

- (int)testReturnFunc;
- (int)testReturnFunc:(NSString *)str;

- (void)useBlock;
- (void)testBlock:(void (^)())successBlock;
@end
