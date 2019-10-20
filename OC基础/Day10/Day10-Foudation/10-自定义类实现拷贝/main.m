//
//  main.m
//  10-自定义类实现拷贝
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
 1. copy 方法的确是定义在NSObject类中的一个方法
    copy方法的内部调用了另外一个方法，copyWithZone
    这个方法是定义在NSCoping协议之中的。
 
    因为我们自定义的类没有遵守NSCoping协议，那么我们的类中就没有copyWithZone:这个方法
    所以，当我们自定义的类调用copy方法的时候就会出错。
 
 2. 如果我们想要让我们自己的类具备对象拷贝能力，那么就让我们的类遵守NSCoping协议，并实现copyWithZone:这个方法
    如果想要实现深拷贝，那么就重新创建一个对象，并将对象的属性的值复制返回
    如果想要实现浅拷贝，那么就直接返回self
 
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    
    Person *p1 = [Person new];
    p1.name = @"jack";
    p1.age = 18;
    
    Person *p2 = [p1 copy];
    
    
    NSLog(@"p1=%p,p2=%p",p1,p2);
    return 0;
}
