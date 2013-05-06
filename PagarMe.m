//
//  PagarMe.m
//  PagarMe
//
//  Created by Pedro Franceschi on 5/3/13.
//  Copyright (c) 2013 PagarMe. All rights reserved.
//

#import "PagarMe.h"

@implementation PagarMe

@synthesize encryptionKey, liveMode;

static PagarMe *sharedInstance = nil;

+ (PagarMe *)sharedInstance {
    if (nil != sharedInstance) {
        return sharedInstance;
    }
 
	// Thread safe singleton...
    static dispatch_once_t pred;
    dispatch_once(&pred, ^{
        sharedInstance = [[PagarMe alloc] init];
    });
 
    return sharedInstance;
}

- (id)init {
	self.liveMode = YES;

	return self;
}

@end
