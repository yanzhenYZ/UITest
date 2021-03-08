//
//  FullViewController.m
//  UITest
//
//  Created by yanzhen on 2021/3/8.
//

#import "FullViewController.h"
#import "BackView.h"
#import "YZPlayer.h"

@interface FullViewController ()
@property (weak, nonatomic) IBOutlet BackView *backView;
@property (nonatomic, strong) YZPlayer *player;
@end

@implementation FullViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _player = [[YZPlayer alloc] init];
    [_player setPlayerView:self.backView];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        [self.player stop];
//        self.backView.frame = CGRectZero;
        
    });
}
@end
