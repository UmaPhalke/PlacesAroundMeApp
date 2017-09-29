//
//  SecondTableViewController.h
//  PlacesAroundMeApp
//
//  Created by Student016 on 07/09/17.
//  Copyright (c) 2017 felix. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface SecondTableViewController : UITableViewController<NSURLConnectionDataDelegate,NSURLConnectionDelegate>

@property(nonatomic,retain)NSMutableData *buffer;

@property(nonatomic,retain)NSMutableArray *infoarray;

@property(nonatomic,retain)NSString *tempstr;



@end
