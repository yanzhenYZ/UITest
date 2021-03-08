//
//  YZPlayerView.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "YZPlayerView.h"
#import "YZPlayerLayer.h"
#import "YZMTKView.h"

@interface YZPlayerView ()
@property (nonatomic, strong) YZMTKView *mtkView;
@end

@implementation YZPlayerView
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.backgroundColor = UIColor.redColor;
        self.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        
        _mtkView = [[YZMTKView alloc] init];
        _mtkView.frame = self.bounds;
        [self addSubview:_mtkView];
    }
    return self;
}

- (void)stop {
//    self.mtkView.frame = CGRectZero;
    [self.mtkView stop];
}

+ (Class)layerClass {
    return [YZPlayerLayer class];
}

-(void)layoutSubviews {
    [super layoutSubviews];
    _mtkView.frame = self.bounds;
}

@end
