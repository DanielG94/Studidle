//
//  ViewController.h
//  Studidle
//
//  Created by Daniel Buchholz on 17.5.16.
//  Copyright © 2016 Daniel Buchholz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PageContentViewController.h"


@interface ViewController : UIPageViewController <UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageViewController;
@property (strong, nonatomic) NSArray *pageTitles;

@end

