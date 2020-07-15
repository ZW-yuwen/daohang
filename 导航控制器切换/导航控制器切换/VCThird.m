//
//  VCThird.m
//  导航控制器切换
//
//  Created by 仲雯 on 2020/7/15.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCThird.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    self.title = @"Third";
    
    UIBarButtonItem* btnLeft = [[UIBarButtonItem alloc] initWithTitle:@"Renturn" style:UIBarButtonItemStylePlain target:self action:@selector(pressReturn)];
    
    self.navigationItem.leftBarButtonItem = btnLeft;
    
    UIBarButtonItem* btnRight = [[UIBarButtonItem alloc] initWithTitle:@"Home" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.rightBarButtonItem = btnRight;
    
}

-(void)pressBack{
    [self.navigationController popToRootViewControllerAnimated:YES];
}

-(void)pressReturn {
    NSLog(@"return");
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
