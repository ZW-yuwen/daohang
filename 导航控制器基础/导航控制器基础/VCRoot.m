//
//  VCRoot.m
//  导航控制器基础
//
//  Created by 仲雯 on 2020/7/15.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    
    self.view.backgroundColor = [UIColor yellowColor];
    //导航栏文字标题
    self.title = @"根视图";
    //设置导航元素项目标题
    //如果没有设置navigationItem.title，为nil 系统会用self.title作为标题
    //如果navigationItem.title不为nil，则使用navigationItem.title为标题内容
    self.navigationItem.title = @"Title";
    
    //创建导航栏左侧按钮 根据title文字来创建
    //1. 按钮上的文字 2. 按钮风格 3. 时间拥有者 4. 按钮事件
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithTitle: @"left" style: UIBarButtonSystemItemDone  target:self action:@selector(pressLeft)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(pressRight)];
    
    self.navigationItem.rightBarButtonItem = rightBtn;
    
    //标签对象
    UILabel* label = [[UILabel alloc] initWithFrame:CGRectMake(10, 10, 50, 40)];
    label.text = @"fun!";
    
    label.textAlignment = NSTextAlignmentCenter;
    
    //将任何类型的空间添加到导航按钮的方法
    UIBarButtonItem* item1 = [[UIBarButtonItem alloc] initWithCustomView:label];
    
    //创建按钮数组
    NSArray* arrayBtn = [NSArray arrayWithObjects:rightBtn, item1, nil];
    //将右侧按钮数组赋值
    self.navigationItem.rightBarButtonItems = arrayBtn;
    
}

-(void) pressLeft {
    NSLog(@"pressing left!");
}

-(void) pressRight {
    NSLog(@"pressing right!");
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
