//
//  ScaryBugData.h
//  scaryBugs
//
//  Created by Admin on 12.07.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScaryBugData : NSObject

@property (strong, nonatomic) NSString* title;
@property (assign, nonatomic) float rating;

- (id)initWithTitle:(NSString*) title rating:(float) rating;

@end
