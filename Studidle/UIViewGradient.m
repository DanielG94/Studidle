//
//  UIViewGradient.m
//  Studidle
//
//  Created by Daniel Gofman on 29.07.16.
//  Copyright © 2016 Daniel Buchholz. All rights reserved.
//

#import "UIViewGradient.h"

@implementation UIViewGradient


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSArray arrayWithObjects:(id)[[UIColor lightGrayColor] CGColor], (id)[[UIColor whiteColor] CGColor], nil];
    [self.layer insertSublayer:gradient atIndex:0];
 
}


@end
