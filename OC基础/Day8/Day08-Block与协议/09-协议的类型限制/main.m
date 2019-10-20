//
//  main.m
//  09-协议的类型限制
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. 请声明一个指针，这个指针可以指向任意对象，但是要求指向的对象要遵守指定的协议。
    如果不遵守最起码要报一个警告。
 
    要求声明一个指针，指向一个遵守了学习协议的对象，否则最起码要给一个警告。
 
    NSObject<协议名称>* 指针名;
    这个时候，这个指针可以指向遵守了指定协议的任意对象，否则就会报一个警告。
 
    当然完全可以使用id指针。
    id<协议名称> 指针名;
    id<StudyProtocol> id1 = [Student new];
 
 
 2. 声明一个指针变量，要求这个指针变量指向的对象必须遵守多个协议。
 
    NSObject<StudyProtocol,MyProtocol> *obj1 = [Student new];
    id<StudyProtocol,MyProtocol> id2 = [Student new];
 
 3. 定义一个指针，指向遵守了学习协议的学生对象。
 
 4. 为什么要这么做？
        1） 遵守了某个协议的类，就相当于这个类拥有了这个协议所定义的行为。
        2） 因为我们要调用这个对象中的协议方法。只有类遵守了协议，这个类当中才一定有协议方法。
        3）
 
 */
#import <Foundation/Foundation.h>
#import "StudyProtocol.h"
#import "Student.h"
#import "MyProtocol.h"
#import "ITStudent.h"

int main(int argc, const char * argv[]) {
    
//    案例1
//    NSObject<StudyProtocol>* obj = @"jack";
    
//    案例2
//    NSObject<StudyProtocol>* obj = [Student new];
//    id<StudyProtocol> id1 = [Student new];
    
//    案例3
//    NSObject<StudyProtocol,MyProtocol> *obj1 = [Student new];
//    id<StudyProtocol,MyProtocol> id2 = [Student new];
    
//    案例4
    Student<StudyProtocol> *stu = [Student new];
    Student<StudyProtocol> *stu1 = [ITStudent new];
    
    return 0;
}
