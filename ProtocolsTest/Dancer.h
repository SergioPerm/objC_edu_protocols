//
//  Dancer.h
//  ProtocolsTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Patient.h"

@interface Dancer : NSObject <Patient>

@property (strong, nonatomic) NSString* favouriteDance;
@property (strong, nonatomic) NSString* name;

- (void) dance;

@end
