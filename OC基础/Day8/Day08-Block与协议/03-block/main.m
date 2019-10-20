//
//  main.m
//  03-block
//
//  Created by a on 2019/10/15.
//  Copyright © 2019 Jamie. All rights reserved.
//



/*
 1. OC在C的基础之上新增了一些数据类型
    BOOL
    Boolean
    class
    nil
    SEL
    id
    block
 
 2. block是一个数据类型
    int double float char
    既然是一个数据类型，那么就可以声明这个数据类型的变量，所以我们完全也可以声明一个block类型的变量
    不同类型的比阿娘当中可以存储不同类型的数据
    block类型的变量可以存储什么样的数据呢？
 
    1）block是一个数据类型，所以我们可以声明一个block类型的变量
    2）block类型的变量中专门存储一段代码，这段代码可以有参数可以有返回值。
 
 3. block变量的声明
    1）虽然block变量中是用来存储1段代码的，但是一个block变量中并不是任意的一段代码都可以存进去的。而是有限定的。
      也就是说，在声明这个block变量的时候，必须要指定这个block变量存储的代码段是否有参数。是否有返回值。
        一旦指定以后，这个block变量中就只能存储这样的代码了
        声明了一个block变量，返回值是void，参数是一个int类型。
        这个时候，这个block变量中就只能存储无返回值并且有一个int参数的代码段。
 
    2）声明block变量的语法格式
    返回值类型 (^block变量的名称)（参数列表）;
    void(^myBlock1)(); 表示声明了一个block类型的变量叫做myBlock1 这个变量中只能存储没有返回值没有参数的代码段。
 
    int(^myBlock2)();
    int (^myBlock3)(int num1, int num2)；
 
    3）最重要的
        声明block变量的时候，要指定这个block变量可以存储的代码段的返回值和参数描述。
        一旦指定，这个block变量智能存储这样的代码段了，其他格式的代码段无法存储
 4. 初始化 block 变量
    1）原理：写一个符合block要求的代码段，存储到block变量中就可以了。
    2）代码段的书写格式
    ^返回值类型（参数列表）{
        代码段；
    }
    3）写一个无参数无返回值的代码段
    ^void(){
        NSLog(@"我爱你");
    };
    这个时候，我们就可以将这段代码使用赋值符号存储到，无返回值无参数要求的block变量中
 
     void(^myBlock1)() = ^void(){
     NSLog(@"我爱你");
     };
 
    当然也可以在声明block变量的同时使用符合要求的代码段初始化
 
    4）有返回值的代码段
     ^int(){
        int num1 = 10 + 30;
        return num1;
 
     };
 
     我们将这段代码赋值给符合要求的block变量
 
    5）既有参数也有返回值的代码段
     ^int(int num1, int num2){
 
        int num3 = num1 + num2;
        return num3;
    };
    我们将这段代码赋值给符合要求的block变量
 
    6）注意：赋值给block变量的代码段必须block变量的要求，否则会报错。
 
 5. 如何执行存储在block变量中的代码段
 
 
     语法格式：block变量名();
     有参数就传参数，有返回值就接收。
 
 
 6. 关于block的简写
    1）如果我们写的代码段没有返回值，那么代码段的void可以省略
     void(^myBlock1)() = ^(){
                 NSLog(@"我爱你");
     };
    注意，代码段的返回值可以省略，声明block变量的返回值无论是什么都不能省略。
 
    2）如果我们写的代码段没有参数，代码段的小括号也可以省略
     void(^myBlock1)() = ^int{
        return 3;
     };
    当一个代码段既没有参数，也没有返回值的时候，就只写一个^
     void(^myBlock1)(void) = ^{
     NSLog(@"我爱你");
     };
 
    3) 声明block 的时候，如果有指定的参数，可以只写参数的类型，不写参数的名称。
        int(^myBlock3)(int,int);
        注意，这个地方说的是声明block变量的时候，在写代码段的时候，类型和名称都要写
 
    4）无论代码段是否有返回值，在写代码段的时候，可以不写返回值类型。

         myBlock3 = ^(int num1, int num2){
 
         int num3 = num1 + num2;
         return num3;
         };
 
 
        如果在写代码段的时候，省略了返回值，这个时候，系统会自动地确定返回值的类型。
        如果代码段中没有返回任何数据，那么它会认为代码段是没有任何返回值的。
        如果代码段中有返回数据，返回的数据是什么类型，它就会认为代码段是什么类型。
 
    建议： 仍然按照我们最标准的写法来写block变量和block代码段，因为这样可以提高代码的可读性。
 
 
 7. 简化block变量的复杂定义
    1）问题：定义block变量的时候，要写好长一串字符
    2）typedef 的使用场景:将一个长类型定义为一个短类型
    3）可以使用typedef将长block类型，定义为一个短类型
 
    typeof 返回值类型(^新类型)(参数列表)
    typedef void (^NewType)(void); 代表重新定义了一个类型叫做 NewType 是一个block类型，无参数，无返回值的block类型
 
 8. 关于block块访问外部变量的问题。
 
    1）在block代码块的内部可以取定义在外部的变量的值，定义在外部的局部变量和全局变量
    2）在block代码块的内部可以修改全局变量的值，但是不能修改定义在外部的局部变量的值
    3) 如果你希望我们定义的局部变量可以允许在block代码的内部去修改，那么就为这个局部变量加一个__block的修饰符
 
 
 
 
 */
#import <Foundation/Foundation.h>
typedef void (^BlockVoid)(void);

int num1 = 100; // 全局变量
int main(int argc, const char * argv[]) {

    __block int num2 = 200; // 局部变量
//    案例3
    BlockVoid block1 = ^{
        
        int num3 = 300; // 局部变量
        num3++;
        num1++;
        num2++; 
        NSLog(@"num3 = %d", num3);
        NSLog(@"啦啦啦");
    };
    

    block1();
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//   案例1： block变量的声明 1
    
//    void(^myBlock1)(void);
//    int(^myBlock2)(void);
//    int(^myBlock3)(int num1, int num2);
//
//    myBlock1 = ^{
//        NSLog(@"我爱你");
//    };
    
//    或者可以
//    void(^myBlock1)() = ^void(){
//                NSLog(@"我爱你");
//    };

    
//    myBlock2 = ^int(){
//        int num1 = 10 + 30;
//        return num1;
//    };
//
//
//
//    myBlock3 = ^int(int num1, int num2){
//
//        int num3 = num1 + num2;
//        return num3;
//    };
//
//
//    myBlock1();
//    int sum = myBlock2();
//    NSLog(@"sum = %d",sum);
//
//
//    int res = myBlock3(10,100);
//    NSLog(@"res = %d",res);
    
    
    
//    案例2
    
////    把长类型定义成短类型
//    typedef unsigned long long int ll;
//    ll a  = 10;
//
//
////    代表重新定义了一个类型叫做NewType
//    typedef void (^NewType)(void);
//    typedef int (^NewType2)(int num1,int num2);
//    NewType block1 = ^{
//        NSLog(@"呵呵");
//    };
//
//    NewType block2;
//
//    NewType2 t1 = ^int(int num1, int num2){
//        int num3 = num1 + num2;
//        return num3;
//    };
    
    
    return 0;
}
