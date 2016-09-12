//
//  ViewController.m
//  buttondemo
//
//  Created by 腾实信 on 16/9/12.
//  Copyright © 2016年 ida. All rights reserved.
//

/*
重写button
目前主要用两种方式，一种就是重写按钮，另一种就是通过setTitleEdgeInsets和setImageEdgeInsets方法解决
//默认左图 右文本
 
*/

#import "ViewController.h"
#import "leftTitle.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupLeftTitleBtn0];
    [self setupLeftTitleBtn1];
    
//    UIButton *leftTitleBtn = [[UIButton alloc]init];
//    UIButton *leftTitleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//    [leftTitleBtn setTitle:@"0" forState:UIControlStateNormal];
//    [leftTitleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    [leftTitleBtn.titleLabel setFont:[UIFont systemFontOfSize:15]];
//    [leftTitleBtn setImage:[UIImage imageNamed:@"我的sel"] forState:UIControlStateNormal];
//
//    leftTitleBtn.frame=self.view.frame;
//    leftTitleBtn.center = self.view.center;
//     [self.view addSubview:leftTitleBtn];
//     NSLog(@"rect:%@",NSStringFromCGRect(leftTitleBtn.titleLabel.frame));
//     NSLog(@"imageViewrect:%@",NSStringFromCGRect(leftTitleBtn.imageView.frame));
    [self setupTitleDown];
}

//重写button
//左文  右图
-(void)setupLeftTitleBtn0{

    leftTitle *leftTitleBtn = [[leftTitle alloc]init];
    [leftTitleBtn setTitle:@"0" forState:UIControlStateNormal];
    [leftTitleBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [leftTitleBtn.titleLabel setFont:[UIFont systemFontOfSize:15]];
    [leftTitleBtn setImage:[UIImage imageNamed:@"我的sel"] forState:UIControlStateNormal];
    leftTitleBtn.frame = CGRectMake(self.view.center.x, 10, 80, 50);
    leftTitleBtn.backgroundColor = [UIColor redColor];
    [self.view addSubview:leftTitleBtn];
}

-(void)setupLeftTitleBtn1{

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"我的sel"] forState:UIControlStateNormal];
    [btn setTitle:@"1" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(self.view.center.x, 70, 80, 50);
    btn.backgroundColor = [UIColor redColor];

    btn.imageEdgeInsets = UIEdgeInsetsMake(0, btn.frame.size.width - btn.imageView.frame.origin.x - btn.imageView.frame.size.width, 0, 0);

     btn.titleEdgeInsets = UIEdgeInsetsMake(0, -(btn.frame.size.width - btn.imageView.frame.size.width), 0, 0);
    
    
    
    [self.view addSubview:btn];
    
}
-(void)setupTitleDown{

    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setImage:[UIImage imageNamed:@"我的sel"] forState:UIControlStateNormal];
    [btn setTitle:@"2" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    btn.frame = CGRectMake(self.view.center.x, 140, 80, 50);

     btn.backgroundColor = [UIColor redColor];
    
    btn.imageEdgeInsets = UIEdgeInsetsMake(-(btn.frame.size.height-btn.titleLabel.frame.size.height-btn.titleLabel.frame.origin.y), btn.frame.size.width/2-(btn.imageView.frame.origin.x+btn.imageView.frame.size.width/2), 0, 0);
    
    btn.titleEdgeInsets = UIEdgeInsetsMake(btn.frame.size.height-btn.imageView.frame.size.height-btn.imageView.frame.origin.y,  -btn.imageView.frame.size.width, 0, 0);
    
    
    
    [self.view addSubview:btn];


}

@end
