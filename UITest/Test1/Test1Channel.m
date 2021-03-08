//
//  Test1Channel.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "Test1Channel.h"
#import "Test2View.h"

@interface Test1Channel ()
@property (nonatomic, weak) UIView *view;
@property (nonatomic,  strong) Test2View *t2View;
@end

@implementation Test1Channel
-(void)setupTestView:(UIView *)view {
    _view = view;
    _t2View = [[Test2View alloc] initWithFrame:_view.bounds];
    _t2View.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [_view addSubview:_t2View];
}

- (void)dealloc
{
    NSLog(@"1234:%@", NSThread.currentThread);
}
@end
