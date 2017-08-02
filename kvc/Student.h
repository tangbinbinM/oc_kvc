//
//  Student.h
//  kvc
//
//  Created by yg on 2017/8/2.
//  Copyright © 2017年 TBB. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Family.h"
#import "Course.h"
@interface Student : NSObject
{
@private
    float _score;
}
@property(nonatomic)int sId;

//家庭信息对象属性
@property(nonatomic,strong)Family *family;

//数组属性
@property(nonatomic,strong)NSArray *courses;

@end
