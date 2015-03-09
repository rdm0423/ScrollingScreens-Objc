//
//  PageViewControllerDataSource.h
//  ScrollingScreens-Objc
//
//  Created by Ross McIlwaine on 2/12/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PageViewControllerDataSource : NSObject <UIPageViewControllerDataSource>

- (UIViewController *)viewControllerAtIndex:(NSInteger)index;

@end
