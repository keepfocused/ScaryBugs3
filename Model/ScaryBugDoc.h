//
//  ScaryBugDoc.h
//  scaryBugs
//
//  Created by Admin on 12.07.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIkit.h>

@class  ScaryBugData;

@interface ScaryBugDoc : NSObject

@property (strong, nonatomic)ScaryBugData* data;
@property (strong, nonatomic)UIImage* thumbImage;
@property (strong, nonatomic)UIImage* fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage*)thumbImage fullImage:(UIImage*)fullImage;

@end
