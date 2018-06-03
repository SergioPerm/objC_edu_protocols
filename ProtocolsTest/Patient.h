//
//  Patient.h
//  ProtocolsTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol Patient <NSObject>

@required
@property (strong, nonatomic) NSString* name;

- (BOOL) areYouOk;
- (void) takePill;
- (void) makeShot;

@optional
- (NSString*) howIsYouFamily;
- (NSString*) howIsYouJob;

@end
