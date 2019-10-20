//
//  main.m
//  04-block的使用
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//
/*
 1. block是一个数据类型，能不能作为函数的参数呢？当然是可以的
 
 2. 如何为函数定义block类型的参数？
    a. 在小括弧中声明一个指定格式的block变量就可以了。
    b. 可以使用typedef简化定义，这样看起来就不会晕了。
 
 3. 如何去调用带block参数的函数呢?
 
    a.如果要调用的函数的参数是block类型的，那么要求在调用的时候传入一个和形参block要求的代码段。
    b.调用的时候，可以将代码存储到一个block变量中，然后再传递这个block变量，也可以直接将符合要求的代码写在小括弧中传递。
    c.小技巧，通过Xcode的提示可以快速地生成block代码段的框架
 
 4. 将block作为函数的参数可以实现什么样的效果？
    可以将调用者自己写的一段代码传递到函数的内部去执行。
 
 
 5. block 也可以作为函数的返回值
 
    当将block作为函数的返回值的时候，返回值的类型就必须要使用typedef定义的短类型。
 
 6. block 与函数
    相同点：都是封装一段代码
    不同点：
    1）block是一个数据类型，函数是一个函数
 
    2）我们可以声明block类型的变量，函数就只是函数
 
    3）block可以作为函数的参数和返回值，而函数不能直接作为函数的参数
 
 
 
 */
#import <Foundation/Foundation.h>
typedef void (^Block1)(void);
// 为这个函数定义一个参数。定义一个block类型的参数。
// 定义一个无参数的无返回值的block

void test(Block1 block1) {
    NSLog(@"~~~~");
    block1();
    NSLog(@"~~~~");
}

void test2(int (^paramsBlock)(int num1,int num2)) {
    NSLog(@"~~~~");
    int sum = paramsBlock(10,20);
    NSLog(@"%d",sum);
    NSLog(@"~~~~");
}

Block1 ttt()
{
    void (^block1)(void) = ^{
        NSLog(@"~~block作为返回值~~~");
    };
    return block1;
}
int main(int argc, const char * argv[]) {
    
    
    
    test(^{
        NSLog(@"我爱广州小蛮腰");
    });
    
    
    
    
    
    
    Block1 type = ^{
        NSLog(@"哈哈");
        NSLog(@"呵呵");
    };
    
    test(type);
    
    
    
    test(^{
        NSLog(@"嘿嘿");
        NSLog(@"吼吼");
    });
    
    
    test2(^int(int num1, int num2) {
        return num1 + num2;
    });
    
    
    
    Block1 test3 = ttt();
    test3();
    
    return 0;
}
