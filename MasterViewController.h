//
//  MasterViewController.h
//  ScaryBugs3
//
//  Created by Admin on 12.07.17.
//  Copyright © 2017 Galiev Danil. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic)NSMutableArray* bugs;

@property (strong, nonatomic) DetailViewController *detailViewController;




@end

