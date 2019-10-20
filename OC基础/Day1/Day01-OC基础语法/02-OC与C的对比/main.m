//
//  main.m
//  02-OC与C的对比
//
//  Created by a on 2019/6/10.
//  Copyright © 2019年 Jamie. All rights reserved.
//
/*
 1.OC程序的编译、连接、执行
    1). 在.m文件中写上符号OC语法规范的源代码
    2). 使用编译器将源代码编译为目标文件.o
        cc -c xx.m
        a.预处理
        b.检查语法
        c.编译
 
    3). 链接
        cc xx.o
        如果程序当中使用到了框架中的函数或者类，那么在链接的时候，就必须要告诉编译器，去哪一个框架中找到这个函数或者类
        cc xx.o -framework 框架名称。
        cc main.o -framework Foundation
        程序中用到了哪一个框架中的功能，就在这个地方告诉编译器
 
    4). 链接成功以后就会生成一个a.out可执行文件，执行就可以了。
  2. 我们一点击运行按钮，所有的事情Xcode就帮我们做了
  3. OC程序和C程序各个阶段后缀名对比
     源文件  目标文件  可执行文件
  C  .c     .o      .out
  OC .m     .o      .out
 
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
