//
//  ViewController.m
//  PurchaseQuantityView
//
//  Created by 陈升琪 on 15/8/14.
//  Copyright (c) 2015年 陈升琪. All rights reserved.
//

#import "ViewController.h"
#import "PurchaseQuantityView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    PurchaseQuantityView *purchaseQuantityView = [[PurchaseQuantityView alloc]initWithFrame:CGRectMake(40, 40, 200, 40)];
    [self.view addSubview:purchaseQuantityView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
