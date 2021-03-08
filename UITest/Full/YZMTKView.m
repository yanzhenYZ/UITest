//
//  YZMTKView.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "YZMTKView.h"
#import "YZMetalLayer.h"

@implementation YZMTKView
+(Class)layerClass {
    return [YZMetalLayer class];
}

-(void)stop {
    self.drawableSize = CGSizeMake(100, 100);
    self.contentScaleFactor = 2;
}
@end
