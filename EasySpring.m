//
//  EasySpring.m
//  EasySpring
//
//  Created by Ninjaprawn on 22.03.2014.
//  Copyright (c) 2014 Ninjaprawn. All rights reserved.
//

#import "EasySpring.h"

@implementation PWWidgetEasySpring

- (void)configure {
	[super configure];
}

- (void)load {
	[super load];
	// load resources here
}

- (void)willPresent {
	// pre-fetch data and configure default item view controller here
}

- (void)submitEventHandler:(NSDictionary *)values {
	// show an alert view when user presses action (submit) button
	NSUInteger chosen = [(values[@"chosen"])[0] unsignedIntegerValue];
    int c = (int)chosen;
    switch (c) {
        case 1:
            system("killall -9 backboardd");
            break;
        case 2:
            system("killall -SEGV SpringBoard");
            break;
        case 3:
            system("uicache && killall -9 backboardd");
            break;
        default:
            break;
    }
    /* Debugging
    NSString *choice = [NSString stringWithFormat:@"%lu",(unsigned long)c];
	[self showMessage:choice title:@"Submitted"];
     */
}

- (void)dealloc {
	// release everything here
	[super dealloc];
}

@end