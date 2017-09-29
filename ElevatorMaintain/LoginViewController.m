//
//  LoginViewController.m
//  ElevatorMaintain
//
//  Created by 张晓烨 on 2017/9/29.
//  Copyright © 2017年 zxy. All rights reserved.
//

#import "LoginViewController.h"
#import "MainViewController.h"
#import "ElevatorViewController.h"
#import "NewsViewController.h"
#import "RecordViewController.h"
#import "UserViewController.h"
@interface LoginViewController ()<UITabBarControllerDelegate>
{
    MainViewController *Main;
    ElevatorViewController *Elevator;
    NewsViewController *News;
    RecordViewController *Record;
    UserViewController *User;
}
@end

@implementation LoginViewController

-(void)viewWillAppear:(BOOL)animated{
    
    self.navigationController.navigationBarHidden = YES;

}

-(void)viewWillDisappear:(BOOL)animated{
    
    self.navigationController.navigationBarHidden = NO;

}

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)getInMainView{
    
    Main = [[MainViewController alloc]init];
    Main.tabBarItem.title = @"首页";
    Main.tabBarItem.image =[UIImage imageNamed: @"主页"];
    
    Elevator = [[ElevatorViewController alloc]init];
    Elevator.tabBarItem.title = @"电梯";
    Elevator.tabBarItem.image = [UIImage imageNamed:@"通讯录"];
    
    News = [[NewsViewController alloc]init];
    News.tabBarItem.title = @"消息";
    News.tabBarItem.image = [UIImage imageNamed:@"工作"];
    
    Record = [[RecordViewController alloc]init];
    Record.tabBarItem.title = @"记录";
    Record.tabBarItem.image = [UIImage imageNamed:@"设置"];

    User = [[UserViewController alloc]init];
    User.tabBarItem.title = @"我的";
    User.tabBarItem.image = [UIImage imageNamed:@"设置"];
    
    
    //a.初始化一个tabBar控制器
    self.tb=[[UITabBarController alloc]init];
    self.tb.delegate = self;
    //设置控制器为Window的根控制器
    
    self.tb.tabBar.backgroundColor = [UIColor whiteColor];
    Main.edgesForExtendedLayout = UIRectEdgeNone;
    Elevator.edgesForExtendedLayout = UIRectEdgeNone;
    News.edgesForExtendedLayout = UIRectEdgeNone;
    Record.edgesForExtendedLayout = UIRectEdgeNone;
    User.edgesForExtendedLayout = UIRectEdgeNone;
    
    //b.创建子控制器
    self.tb.viewControllers=@[Main,Elevator,News,Record,User];
    
//    [self.tb.tabBar setTintColor:RGBCOLOR(66, 178, 252, 1)];
    
    [self.tb.navigationItem.backBarButtonItem setTitle:@""];
    [self.tb.navigationItem setHidesBackButton:YES];
    
    [self.navigationController pushViewController:self.tb animated:YES];
    
}

- (IBAction)doLogin:(UIButton *)sender {
    
    
    [self getInMainView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
