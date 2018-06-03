//
//  Developer.m
//  ProtocolsTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "Developer.h"

@implementation Developer

- (void) work {
    NSLog(@"work");
}

#pragma mark - Patient

- (BOOL) areYouOk {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"is Developer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
    
}

- (void) takePill {
    NSLog(@"Developer %@ take pill", self.name);
}

- (void) makeShot {
    NSLog(@"Developer %@ make shot", self.name);
}

- (NSString*) howIsYouJob {
    return @"My job is awesome!";
}

@end
