//
//  YZPlayer.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "YZPlayer.h"
#import "YZPlayerView.h"

@interface YZPlayer ()
@property (nonatomic, strong) YZPlayerView *playView;
@end

@implementation YZPlayer

- (YZPlayerView *)playView {
    if (!_playView) {
        _playView = [[YZPlayerView alloc] init];
    }
    return _playView;
}

- (void)setPlayerView:(UIView *)view {
    [self.playView removeFromSuperview];
    [view addSubview:self.playView];
    self.playView.frame = view.bounds;
}

-(void)stop {
//    self.playView.frame = CGRectZero;
    [self.playView stop];
}
@end
