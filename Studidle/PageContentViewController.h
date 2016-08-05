//
//  PageContentViewController.h
//  Studidle
//
//  Created by Daniel Gofman on 05.08.16.
//  Copyright © 2016 Daniel Buchholz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface PageContentViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *testLabel;
@property NSUInteger pageIndex;
@property NSString *titleText;

@end
