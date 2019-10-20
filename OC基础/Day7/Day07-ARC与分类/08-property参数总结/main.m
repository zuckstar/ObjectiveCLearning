//
//  main.m
//  08-property参数总结
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. 开发程序分为ARC和MRC
 
 2. 与多线程相关的两个参数
    atomic:默认值,安全，但是效率低下
    nontomic：不安全，但是效率高
 
    无论是在ARC还是MRC都可以使用。
    使用建议：无论是在ARC还是MRC都使用nonatomic
 
 3. retain:只能用在MRC下，代表生成的setter方法是标准的内存管理代码。
 
    当属性的类型是OC对象的时候，绝大多数的情况下使用retain。只要在出现了循环引用的时候，一边retain，一边assign
 
 4. assign：
    在ARC和MRC的模式下都可以使用 assign
    当属性的类型是非OC对象的时候，使用assign
 
 5. strong
    只能使用在ARC机制下，当属性的类型是OC对象类型的时候，绝大多数情况下使用strong
    只有出现了循环引用的时候，1端使用strong，1端使用weak
 
 6. weak：只能使用在ARC机制下，属性的类型是OC对象类型的时候，1端使用strong，1端使用weak
 
 7. readonly readwrite:无论是在ARC还是MRC都可以使用。
 8. setter getter :无论是在ARC还是MRC都可以改名字。

 
 在ARC机制下，原来使用retain的用strong
 出现循环引用的时候，MRC：一边retain 一边assign，ARC，一边strong 一边weak
 
 
 
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
