//
//  ContainerViewController.m
//  ScrollingScreens-Objc
//
//  Created by Joshua Howland on 2/11/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "PresentationViewController.h"
#import "PageViewControllerDataSource.h"

@interface PresentationViewController () //<UIPageViewControllerDelegate>

@property (nonatomic, strong) UIPageViewController *pageViewController;
@property (nonatomic,strong) PageViewControllerDataSource *dataSource;


@end

@implementation PresentationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStyleScroll navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.dataSource = [PageViewControllerDataSource new];
    
    self.pageViewController.dataSource = self.dataSource;
    
    [self.pageViewController setViewControllers:@[[self.dataSource viewControllerAtIndex:0]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    [self addChildViewController:self.pageViewController];
    
    [self.view addSubview:self.pageViewController.view];
    
    [self.pageViewController didMoveToParentViewController:self];
    
}

@end
