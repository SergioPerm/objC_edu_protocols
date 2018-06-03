//
//  Student.m
//  ProtocolsTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) study {
    NSLog(@"Студент учится");
}

#pragma mark - Patient

- (BOOL) areYouOk {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"is Student %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
    
}

- (void) takePill {
    NSLog(@"Student %@ take pill", self.name);
}

- (void) makeShot {
    NSLog(@"Student %@ make shot", self.name);
}

- (NSString*) howIsYouFamily {
    return @"My family is doing well";
}

@end
