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

@property(nonatomic,assign) BOOL statusHiden;
@property(nonatomic,assign) NSInteger barStyle;

@end

@implementation ViewController

-(void)viewWillAppear:(BOOL)animated{
    
    [super viewWillAppear:animated];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *button1 = [[UIButton alloc]initWithFrame:CGRectMake(50, 100, [UIScreen mainScreen].bounds.size.width-100, 100)];
    [button1 setTitle:@"跳转控制器测试" forState:UIControlStateNormal];
    [button1 setBackgroundColor:[UIColor brownColor]];
    [button1 addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button1];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, CGRectGetMaxY(button1.frame)+20,[UIScreen mainScreen].bounds.size.width-100, 100)];
    [button setTitle:@"状态栏的显示与隐藏" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor brownColor]];
    [button addTarget:self action:@selector(click1) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button2 = [[UIButton alloc]initWithFrame:CGRectMake(50, CGRectGetMaxY(button.frame)+10, [UIScreen mainScreen].bounds.size.width-100, 100)];
    [button2 setBackgroundColor:[UIColor purpleColor]];
    [button2 setTitle:@"状态栏白色模式" forState:UIControlStateNormal];
    [button2 addTarget:self action:@selector(click2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [[UIButton alloc]initWithFrame:CGRectMake(50, CGRectGetMaxY(button2.frame)+10, [UIScreen mainScreen].bounds.size.width-100, 100)];
    [button3 setBackgroundColor:[UIColor purpleColor]];
    [button3 setTitle:@"状态栏黑色模式" forState:UIControlStateNormal];
    [button3 addTarget:self action:@selector(click3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button3];
    
}

-(void)click2{
    
    self.barStyle = UIStatusBarStyleLightContent;
    [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
}

-(void)click3{
    
    self.barStyle = UIStatusBarStyleDefault;
    [self performSelector:@selector(setNeedsStatusBarAppearanceUpdate)];
}

// 状态栏是否隐藏
- (BOOL)prefersStatusBarHidden{
    
    return self.statusHiden;
}

// 状态栏的样式
- (UIStatusBarStyle)preferredStatusBarStyle{
    return self.barStyle;
}


-(void)click1{
    
    TestViewController *test = [TestViewController new];
    [self presentViewController:test animated:YES completion:nil];
}



@end
