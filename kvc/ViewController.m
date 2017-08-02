//
//  ViewController.m
//  kvc
//
//  Created by yg on 2017/8/2.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import "ViewController.h"
#import "Student.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testKvc];
}

-(void)testKvc{
    Student *stu = [[Student alloc]init];
    
    //点语法访问属性
    stu.sId = 10;
    NSLog(@"stu.sId[%d]",stu.sId);
    //getter  setter 方法
    [stu setSId:20];
    NSLog(@"[%d]",[stu sId]);
    
    //KVC的方式对属性赋值、读值
    [stu setValue:@30 forKey:@"sId"];//@"_sId"
    NSLog(@"kvc:[%@]",[stu valueForKey:@"sId"]);
    
    //使用KVC的方式对私有的属性进行赋值、读值
    [stu setValue:@100 forKey:@"score"];
    NSLog(@"score:[%@]",[stu valueForKey:@"score"]);
    
    //使用KVC的方式为family中的人名属性赋值
    [stu setValue:@"Lisa" forKeyPath:@"family.fName"];
    NSLog(@"family.fName:[%@]",[stu valueForKeyPath:@"family.fName"]);
    
    //获取所有选修了的课程的成绩
    NSLog(@"courses.cousreScore:%@",[stu valueForKeyPath:@"courses.cousreScore"]);
    //获取所有分数的总成绩
    NSLog(@"%@",[stu valueForKeyPath:@"courses.@sum.cousreScore"]);
    //获取所有分数的平均值  @min  @max
    NSLog(@"%@",[stu valueForKeyPath:@"courses.@avg.cousreScore"]);
    //获取数组中的元素的个数
    NSLog(@"%@",[stu valueForKeyPath:@"courses.@count"]);
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
