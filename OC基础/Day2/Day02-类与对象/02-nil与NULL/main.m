//
//  main.m
//  02-nil与NULL
//
//  Created by a on 2019/6/25.
//  Copyright © 2019年 Jamie. All rights reserved.
//

/*
 1. NULL
    可以作为指针变量的值，如果一个指针变量的值是NULL值代表这个指针不指向内存中的任何一块空间.
    NULL其实等价于0,NULL其实是一个宏，就是0
 2. nil
    只能作为指针变量的值。代表这个指针变量不指向内存中的任何空间。
    nil其实也等价于0，也是一个宏，就是0。
    所以，其实NULL和nil是一样的。
 3. 使用建议
 
    虽然使用NULL的地方可以使用nil，使用nil的地方可以使用NULL，但是不建议大家去随意使用。
    C指针用NULL
        int *p1 = NULL;
        p1指针不指向内存中的任何一块空间
    OC的类指针用nil
        Person *p1 = nil; p1指针不指向任何对象
        这个时候，如果通过p1指针去访问p1指针指向的对象的属性，这个时候会运行报错
        这个时候，如果通过p1指针去调用对象的方法，运行就不会报错，但是方法不会执行，没有任何反应。
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    int *p1 = NULL;
    int *p2 = 0;
    int *p3 = nil;
    
    if(nil == NULL){
        NSLog(@"他们是一样的");
    }
    
    
    return 0;
}
