
//
//  PurchaseQuantityView.m
//  PurchaseQuantityView
//
//  Created by 陈升琪 on 15/8/14.
//  Copyright (c) 2015年 陈升琪. All rights reserved.
//

#import "PurchaseQuantityView.h"

@implementation PurchaseQuantityView


-(id)initWithFrame:(CGRect)frame{
    
    self = [super initWithFrame:frame];
    if (self) {
        [self addTwoButtonAndTextField];
    }
    return self;
}
-(void)addTwoButtonAndTextField{
    _addButton = [[UIButton alloc]init];
    [_addButton setTitle:@"+" forState:UIControlStateNormal];
    _addButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    _addButton.backgroundColor = [UIColor orangeColor];
    [self addSubview:_addButton];
    [_addButton mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.mas_top);
        make.right.equalTo(self.mas_right);
        make.bottom.equalTo(self.mas_bottom);
        make.width.equalTo(@(self.frame.size.width/3));
    }];
    
    _minusButton = [[UIButton alloc]init];
    [_minusButton setTitle:@"-" forState:UIControlStateNormal];
    _minusButton.titleLabel.textAlignment = NSTextAlignmentCenter;
    _minusButton.backgroundColor = [UIColor orangeColor];
    [self addSubview:_minusButton];
    [_minusButton mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(self.mas_top);
        make.left.equalTo(self.mas_left);
        make.bottom.equalTo(self.mas_bottom);
        make.width.equalTo(@(self.frame.size.width/3));
    }];
    
    _PurchaseQuantityTextField = [[UITextField alloc]init];
    _PurchaseQuantityTextField.placeholder = [NSString stringWithFormat:@"%d",_PurchaseQuantity];
    _PurchaseQuantityTextField.textAlignment = NSTextAlignmentCenter;
    [self addSubview:_PurchaseQuantityTextField];
    [_PurchaseQuantityTextField mas_makeConstraints:^(MASConstraintMaker *make){
        make.top.equalTo(_minusButton.mas_top);
        make.right.equalTo(_addButton.mas_left).with.offset(-0.25f);
        make.left.equalTo(_minusButton.mas_right).with.offset(0.25f);
        make.bottom.equalTo(self.mas_bottom);
    }];
}

-(void)initWithPurchaseQuantityTextFieldFont:(UIFont*)font{
    
    _PurchaseQuantityTextField.font = font;
    
}
-(void)initWithButtonBackgroundColor:(UIColor*)color{
    _addButton.backgroundColor = color;
    _minusButton.backgroundColor = color;
}

@end
