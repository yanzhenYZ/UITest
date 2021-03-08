//
//  ViewController.m
//  UITest
//
//  Created by yanzhen on 2021/3/5.
//

#import "ViewController.h"
#import "Test1Channel.h"
#import "Test1View.h"

@interface ViewController ()
@property (nonatomic, strong) Test1View *backView;
@property (nonatomic, strong) Test1Channel *channel;
@end

@implementation ViewController {
    dispatch_queue_t _textQueue;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    _textQueue = dispatch_queue_create("com.test1.Queue", nil);
    
    Test1View *back = [[Test1View alloc] initWithFrame:CGRectMake(0, 200, 200, 200)];
    back.backgroundColor = UIColor.redColor;
    [self.view addSubview:back];
    _backView = back;
    
    _channel = [[Test1Channel alloc] init];
    [_channel setupTestView:_backView];
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [_backView removeFromSuperview];
    _backView = nil;
    dispatch_async(_textQueue, ^{
        _channel = nil;
    });
}
@end
