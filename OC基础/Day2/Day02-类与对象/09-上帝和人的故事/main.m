//
//  main.m
//  09-上帝和人的故事
//
//  Created by a on 2019/6/26.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 有一个类，叫做上帝类
    属性：姓名、年龄、性别
    行为：杀人
 人类：
    属性：姓名、年龄、性别、剩余的寿命
    行为：展示
 */
#import <Foundation/Foundation.h>
#import "God.h"
int main(int argc, const char * argv[]) {
    God *g1 = [God new];
    g1->_name = @"耶稣";
    g1->_age = 99999;
    g1->_gender = GenderMale;
    
    Person *p1 = [Person new];
    p1->_name = @"小东";
    p1->_age = 21;
    p1->_leftLife = 10;
    p1->_gender = GenderMale;
    
    
    [g1 killWithPerson:p1];
    
    NSLog(@"p1->leftLife:%d",p1->_leftLife);
    
    Person *p2 = [g1 makePerson];
    
    [p2 show];
    
    Person *p3 = [g1 makePersonWithName:@"小二" andAge:0 andGender:GenderMale andLeftLife:100];
    
    [p3 show];
    
    
    return 0;
}
