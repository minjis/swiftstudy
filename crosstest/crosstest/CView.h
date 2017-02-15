//
//  CView.h
//  crosstest
//
//  Created by Terry Kim on 15/02/2017.
//  Copyright © 2017 Terry Kim. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CView;
@protocol CViewDelegate <NSObject>

- (void)didTap:(CView *)sender;

@end


@interface CView : UIView

@property (nonatomic, strong) id<CViewDelegate> delegate;

@end
