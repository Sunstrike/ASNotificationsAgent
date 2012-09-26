//
//  Notifier_AppDelegate.m
//  Notifications
//
//  Created by Robert Tully on 06/07/2012.
//  Copyright (c) 2012 Azurenode. All rights reserved.
//

#import "Notifier_AppDelegate.h"

@implementation Notifier_AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    @autoreleasepool {
        NSUserDefaults *args = [NSUserDefaults standardUserDefaults];
        if ([args stringForKey:@"title"] != NULL) {
            // Create notification object
            NSUserNotification *notification = [[NSUserNotification alloc] init];
            
            notification.hasActionButton = NO;
            notification.title = [args stringForKey:@"title"];
            notification.subtitle = [args stringForKey:@"subtitle"];
            notification.informativeText = [args stringForKey:@"info"];
            //NSLog(@"STARTUP NOTIFICATION OBJECT:\n%@",notification); // Comment out for Archive
            
            // Send to notification center
            [[NSUserNotificationCenter defaultUserNotificationCenter] deliverNotification:notification];
        } else {
            printf("No information provided OR using wrong format\n\n");
            printf("USAGE: %s  -title \"TITLE\" [-info \"INFO TEXT\" -subtitle \"SUBTITLE\"]\n\n", [[[NSProcessInfo new] processName] UTF8String]);
        }
    }
    
    // Die.
    [[NSApplication sharedApplication] terminate:[NSApplication sharedApplication]];
}

@end
