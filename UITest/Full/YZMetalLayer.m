//
//  YZMetalLayer.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "YZMetalLayer.h"

@implementation YZMetalLayer
- (void)layoutSublayers {
    [super layoutSublayers];
    NSLog(@"YZYZ:%@:%@", self, NSThread.currentThread);
}
@end
