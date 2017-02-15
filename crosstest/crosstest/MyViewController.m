//
//  MyViewController.m
//  crosstest
//
//  Created by Terry Kim on 15/02/2017.
//  Copyright © 2017 Terry Kim. All rights reserved.
//

#import "MyViewController.h"
#import "CView.h"

@interface MyViewController () <CViewDelegate>

@end

@implementation MyViewController {
    CView *_cView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    _cView = [[CView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
    _cView.delegate = self;
    [self.view addSubview:_cView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc {
    NSLog(@"Deleted!!!!");
}

#pragma mark - CViewDelegate
- (void)didTap:(CView *)sender {
    NSLog(@"Tapped");
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
