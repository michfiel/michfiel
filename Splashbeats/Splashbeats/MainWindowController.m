//
//  MainWindowController.m
//  Splashbeats
//
//  Created by m.fielitz on 3/6/14.
//  Copyright (c) 2014 Harry Gerber Kybernetik. All rights reserved.
//

#import "MainWindowController.h"

@implementation MainWindowController

static MainWindowController *controller = nil;

+ (MainWindowController *)mainWindowController;
{
    if (!controller)
        controller = [[self alloc] init];
    
    return controller;
}

- (id)init;
{
    if (!(self = [super initWithWindowNibName:@"MainWindowController"]))
        return nil;

    return self;
}

- (id)initWithWindowNibName:(NSString *)windowNibName;
{
    //SMRejectUnusedImplementation(self, _cmd);
    return nil;
}

- (id)initWithWindow:(NSWindow *)window
{
    self = [super initWithWindow:window];
    return self;
}


- (void)dealloc
{
    [super dealloc];
}

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)windowDidLoad
{
    [super windowDidLoad];
}

@end
