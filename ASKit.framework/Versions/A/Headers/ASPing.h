// ==CLASS================================================ //
//                                                         //
//  ASPing.h                                               //
//  ASKit                                                  //
//                                                         //
//  Created by Robert Tully on 26/10/2011.                 //
//                                                         //
// --DESCRIPTION------------------------------------------ //
//                                                         //
//  Basic ping command which calls the system `ping`       //
//  command with optional paramaters.                      //
//                                                         //
// --LICENSE---------------------------------------------- //
//                                                         //
//  Licensed under Creative Commons BY-NC-SA 3.0 Unported  //
//                                                         //
//  More information can be found in the LICENSE file      //
//  within the root folder of this project.                //
//                                                         //
// ======================================================= //

#import <Foundation/Foundation.h>

@interface ASPing : NSObject {
    NSMutableDictionary* userInfo; 
}

- (int)pingIP:(NSString *)pingAddr isAsynchronous:(BOOL)asynch;
- (int)pingIPwithParams:(NSDictionary *)pingParameters isAsynchronous:(BOOL)asynch;
- (void)checkPingStatus:(NSNotification *)aNotification;

- (void)_pingIP:(NSArray *)params;
- (NSTask *)_pingIP_Synch:(NSArray *)params;

@end
