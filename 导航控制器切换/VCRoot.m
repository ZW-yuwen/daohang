//
//  VCRoot.m
//  导航控制器切换
//
//  Created by 仲雯 on 2020/7/15.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //设置导航栏透明度
    //默认透明度为YES
    self.navigationController.navigationBar.translucent = YES;
    
    self.view.backgroundColor = [UIColor yellowColor];
    //导航栏风格
    self.navigationController.navigationBar.barStyle = UIBarStyleDefault;
    
    self.title = @"home";
    
    UIBarButtonItem* next = [[UIBarButtonItem alloc] initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem = next;
    
}

-(void) pressNext{
    
    //创建新的视图控制器
    VCSecond* vc02 = [[VCSecond alloc] init];
    
    //使用当前视图控制器的导航控制器对象
    [self.navigationController pushViewController:vc02 animated:YES];
    
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
