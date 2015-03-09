//
//  PageViewControllerDataSource.m
//  ScrollingScreens-Objc
//
//  Created by Ross McIlwaine on 2/12/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PageViewControllerDataSource.h"
#import "ContentViewController.h"
#import "ContentController.h"

@implementation PageViewControllerDataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSInteger beforeIndex = ((ContentViewController *)viewController).index - 1;
    
    return [self viewControllerAtIndex:beforeIndex];
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSInteger afterIndex = ((ContentViewController *)viewController).index + 1;
    
    return [self viewControllerAtIndex:afterIndex];
}

- (UIViewController *)viewControllerAtIndex:(NSInteger)index {
    
        // Getting the number of pages from the content controller
    if (index < 0 || index >= [[ContentController sharedInstance].content count]) {
        return nil;
    }
    
    ContentViewController *viewController = [ContentViewController new];
    viewController.index = index;
    viewController.name = [ContentController sharedInstance].content[index];
    
    return viewController;
}


@end
