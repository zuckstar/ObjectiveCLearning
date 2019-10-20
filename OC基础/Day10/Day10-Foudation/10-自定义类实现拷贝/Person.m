//
//  Person.m
//  10-自定义类实现拷贝
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
- (id)copyWithZone:(NSZone *)zone
{
// 1.如果要做深拷贝，你就重新创建一个对象
// 把当前对象属性的值，复制到新对象中去，将新对象返回。
    
//    Person *p1 = [Person new];
//    p1.name = _name;
//    p1.age = _age;
//    return p1;
    
//    2. 如果要做浅拷贝，直接返回self即可。
    return self;
}
@end
