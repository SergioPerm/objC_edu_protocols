//
//  Dancer.m
//  ProtocolsTest
//
//  Created by Admin on 23.05.18.
//  Copyright © 2018 Sergio Lechini. All rights reserved.
//

#import "Dancer.h"

@implementation Dancer

- (void) dance {
    NSLog(@"Танцую");
}

#pragma mark - Patient

- (BOOL) areYouOk {
    
    BOOL ok = arc4random() % 2;
    
    NSLog(@"is Dancer %@ ok? %@", self.name, ok ? @"YES" : @"NO");
    
    return ok;
    
}

- (void) takePill {
    NSLog(@"Dancer %@ take pill", self.name);
}

- (void) makeShot {
    NSLog(@"Dancer %@ make shot", self.name);
}

@end
