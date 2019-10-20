//
//  God.m
//  09-上帝和人的故事
//
//  Created by a on 2019/6/26.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "God.h"

@implementation God
- (void)killWithPerson:(Person *)per
{
    NSLog(@"喝下这杯毒药,凡人。。。");
    per->_leftLife = 0;
    NSLog(@"名字叫%@的人，已经死了。",per->_name);
}
- (Person *)makePerson
{
    Person *p1 = [Person new];
    p1->_name = @"夏娃";
    p1->_age = 10;
    p1->_gender = GenderFeMale;
    p1->_leftLife = 10000;
    
    return p1;
}
- (Person *)makePersonWithName:(NSString *)name andAge:(int)age andGender:(Gender)gender andLeftLife:(int) leftLife
{
    Person *p1 = [Person new];
    p1->_name = name;
    p1->_age = age;
    p1->_gender = gender;
    p1->_leftLife = leftLife;
    return p1;
}
@end
