//
//  Student.h
//  ProtocolsTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Patient.h"

@interface Student : NSObject <Patient>

@property (strong, nonatomic) NSString* universityName;
@property (strong, nonatomic) NSString* name;

- (void) study;

@end
