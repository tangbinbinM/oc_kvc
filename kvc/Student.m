//
//  Student.m
//  kvc
//
//  Created by yg on 2017/8/2.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import "Student.h"

@implementation Student


- (Family *)family
{
    if (!_family) {
        _family = [[Family alloc]init];
    }
    
    return _family;
}

- (NSArray *)courses
{
    if (!_courses) {
        Course *c1 = [[Course alloc]init];
        c1.courseName = @"数学";
        c1.cousreScore = 100;
        
        Course *c2 = [[Course alloc]init];
        c2.courseName = @"语文";
        c2.cousreScore = 90;
        
        Course *c3 = [[Course alloc]init];
        c3.courseName = @"英语";
        c3.cousreScore = 80;
        
        _courses = @[c1,c2,c3];
    }
    return _courses;
}
@end
