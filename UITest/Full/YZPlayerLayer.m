//
//  YZPlayerLayer.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "YZPlayerLayer.h"

@implementation YZPlayerLayer
- (void)layoutSublayers {
    [super layoutSublayers];
    NSLog(@"YZYZ:%@:%@", self, NSThread.currentThread);
}
@end
