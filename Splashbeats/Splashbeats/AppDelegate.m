//
//  AppDelegate.m
//  Splashbeats
//
//  Created by m.fielitz on 3/6/14.
//  Copyright (c) 2014 m.fielitz. All rights reserved.
//

#import "AppDelegate.h"

#import "MainWindowController.h"



@implementation AppDelegate

- (id)init;
{
    if (!(self = [super init]))
        return nil;

    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // mainWindowController = [[MainWindowController alloc] initWithWindowNibName:@"MainWindowController"];
    //[mainWindowController showWindow:self];

    [[MainWindowController mainWindowController] showWindow:nil];
}

- (BOOL)applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)theApplication
{
    return YES;
}

@end
