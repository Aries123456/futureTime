//
//  ViewController.m
//  未来时间戳
//
//  Created by 李昆 on 16/7/25.
//  Copyright © 2016年 lk. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
    [self futureLabel];
}

- (void)futureLabel
{
    NSString *timeSp = [NSString stringWithFormat:@"%ld", (long)[[NSDate date] timeIntervalSince1970]];
    
    //http://tool.chinaz.com/Tools/unixtime.aspx
    //这个 url 设置未来时间戳
    //未来时间的时间戳
    NSString *weilaishijain = @"1489712100";
    
    //把字符串转化格式
    NSInteger a = [timeSp integerValue];
    NSInteger b = [weilaishijain integerValue];
    
    if (a >= b) {
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 200, 100)];
        label.textAlignment = NSTextAlignmentCenter;
        label.text = @"我 TM 神秘的出现了!";
        label.backgroundColor = [UIColor redColor];
        [self.view addSubview:label];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
