//
//  ViewController.m
//  XJJScrollViewObserverDemo
//
//  Created by ljw on 15/11/18.
//  Copyright © 2015年 ljw. All rights reserved.
//

#import "ViewController.h"
#import "UIScrollView+ContentOffsetObserver.h"

@interface ViewController () <UIScrollViewContentOffsetObserverDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.scrollView.contentSize = CGSizeMake(0, 1000.f);
    
    UIScrollViewContentOffsetObserver *observer = [[UIScrollViewContentOffsetObserver alloc] init];
    [observer addDelegate:self];
    
    [self.scrollView addContentOffsetObserver:observer];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Delegate
- (void)didOffsetChangedWithScrollViewScrollInfo:(UIScrollViewScrollInfo *)info
{
    NSLog(@"%zd", info.scrollDirection);
}

@end
