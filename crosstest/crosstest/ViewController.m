//
//  ViewController.m
//  crosstest
//
//  Created by Terry Kim on 15/02/2017.
//  Copyright © 2017 Terry Kim. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"


@interface ViewController ()

@property (nonatomic, strong) MyViewController *item;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeInfoDark];
    [button addTarget:self action:@selector(toggleButtonTap:) forControlEvents:UIControlEventTouchUpInside];
    button.frame = CGRectMake(20, 20, 20, 20);
    [self.view addSubview:button];
}

- (void)toggleButtonTap:(UIButton *)sender {
    if (_item) {
//        Call the child’s willMoveToParentViewController: method with the value nil.
//        Remove any constraints that you configured with the child’s root view.
//        Remove the child’s root view from your container’s view hierarchy.
//        Call the child’s removeFromParentViewController m
        [_item willMoveToParentViewController:nil];
        [_item.view removeFromSuperview];
        [_item removeFromParentViewController];
//        _item = nil;
        self.item = nil;
    }
    else {
//        [self addChildViewController:content];
//        content.view.frame = [self frameForContentController];
//        [self.view addSubview:self.currentClientView];
//        [content didMoveToParentViewController:self];
        
        _item = [[MyViewController alloc] initWithNibName:nil bundle:nil];
        [self addChildViewController:_item];
        _item.view.frame = CGRectMake(0, 50, self.view.bounds.size.width, CGRectGetHeight(self.view.bounds)-50);
        [self.view addSubview:_item.view];
        [_item didMoveToParentViewController:self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
