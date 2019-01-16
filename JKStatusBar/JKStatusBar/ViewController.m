//
//  ViewController.m
//  JKStatusBar
//
//  Created by 王冲 on 2019/1/16.
//  Copyright © 2019年 JK科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, [UIScreen mainScreen].bounds.size.width-100, 100)];
    [button setTitle:@"跳转控制器测试" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor brownColor]];
    [button addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
}

-(void)click1{
    
    TestViewController *test = [TestViewController new];
    [self presentViewController:test animated:YES completion:nil];
}



@end
