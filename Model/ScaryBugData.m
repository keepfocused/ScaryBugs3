//
//  ScaryBugData.m
//  scaryBugs
//
//  Created by Admin on 12.07.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import "ScaryBugData.h"

@implementation ScaryBugData

//@synthesize title _title;
//@synthesize rating _rating;

-(id) initWithTitle:(NSString *)title rating:(float)rating
{
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
