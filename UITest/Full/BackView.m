//
//  BackView.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "BackView.h"
#import "BackViewLayer.h"

@implementation BackView

+ (Class)layerClass {
    return [BackViewLayer class];
}

@end
