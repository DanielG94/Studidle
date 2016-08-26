//
//  Scenes.m
//  Studidle
//
//  Created by Daniel Gofman on 26.08.16.
//  Copyright © 2016 Daniel Buchholz. All rights reserved.
//

#import "Scenes.h"

@interface Scenes ()
@end

@implementation Scenes
{
    NSArray *myViewControllers;
}


-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.delegate = self;
    self.dataSource = self;
    
    UIViewController *p1 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"scWork"];
    UIViewController *p2 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"scMain"];
    UIViewController *p3 = [self.storyboard
                            instantiateViewControllerWithIdentifier:@"scUni"];
    
    myViewControllers = @[p1,p2,p3];
    
    [self setViewControllers:@[p2]
                   direction:UIPageViewControllerNavigationDirectionForward
                    animated:NO completion:nil];
    
    NSLog(@"loaded!");
}

-(UIViewController *)viewControllerAtIndex:(NSUInteger)index
{
    return myViewControllers[index];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
     viewControllerBeforeViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    
    --currentIndex;
    currentIndex = currentIndex % (myViewControllers.count);
    return [myViewControllers objectAtIndex:currentIndex];
}

-(UIViewController *)pageViewController:(UIPageViewController *)pageViewController
      viewControllerAfterViewController:(UIViewController *)viewController
{
    NSUInteger currentIndex = [myViewControllers indexOfObject:viewController];
    
    ++currentIndex;
    currentIndex = currentIndex % (myViewControllers.count);
    return [myViewControllers objectAtIndex:currentIndex];
}

-(NSInteger)presentationCountForPageViewController:
(UIPageViewController *)pageViewController
{
    return myViewControllers.count;
}

-(NSInteger)presentationIndexForPageViewController:
(UIPageViewController *)pageViewController
{
    return 0;
}

@end
