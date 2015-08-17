//
//  PurchaseQuantityView.h
//  PurchaseQuantityView
//
//  Created by 陈升琪 on 15/8/14.
//  Copyright (c) 2015年 陈升琪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface PurchaseQuantityView : UIView

@property (strong,nonatomic) UIButton *addButton;
@property (strong,nonatomic) UIButton *minusButton;
@property (strong,nonatomic) UITextField *PurchaseQuantityTextField;
@property int PurchaseQuantity;

-(id)initWithFrame:(CGRect)frame;// 设置 位置及大小。

-(void)initWithPurchaseQuantityTextFieldFont:(UIFont*)font;//设置 textField 里面数字字体。

-(void)initWithButtonBackgroundColor:(UIColor*)color;// 设置 按钮背景颜色


@end
