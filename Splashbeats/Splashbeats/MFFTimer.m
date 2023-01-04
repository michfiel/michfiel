//
//  MFFTimer.m
//  MadeForFun
//
//  Created by Michael Fielitz on 2019-04-05.
//

#import "MFFTimer.h"

@implementation MFFTimer

#if 0

https://stackoverflow.com/questions/1449035/how-do-i-use-nstimer

#endif


double timerInterval = 1.0f;


- (NSTimer *)timer
{
    if (!_timer) {
        _timer = [NSTimer timerWithTimeInterval:timerInterval
                                         target:self
                                       selector:@selector(onTick:)
                                       userInfo:nil
                                        repeats:NO];
    }
    return _timer;
}



- (id)init
{
    if (self = [super init]) {
        [[NSRunLoop mainRunLoop] addTimer:self.timer
                                  forMode:NSRunLoopCommonModes];

    }
    return self;
}


- (void)onTick:(NSTimer *)timer
{
    NSLog(@"tick");
}


- (void)start;
{
    NSRunLoop *runner = [NSRunLoop currentRunLoop];
    [runner addTimer: self.timer
             forMode: NSDefaultRunLoopMode];

}

- (void)stop;
{
    [self.timer invalidate];
    self.timer = nil;
}


@end



