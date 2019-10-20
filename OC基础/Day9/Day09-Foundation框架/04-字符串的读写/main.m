//
//  main.m
//  04-字符串的读写
//
//  Created by a on 2019/10/17.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 
 1. 将字符串内存写入到磁盘上的某一个文件之中。
 - (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError **)error;
 
 参数1：将字符串的内容写入到哪一个文件之中，写上文件的路径。
 参数2：如果是YES,先将内容写入到一个临时文件，如果成功再将文件搬到指定的目录。
                安全。但效率低下。
       如果是NO，直接将内容写入到指定的文件。不安全，但是效率高。
       推荐使用NO。
 参数3：指定写入的时候使用的编码。一般情况下这里写NSUTF8StringEncoding
 参数4：二级指针，要传递一个NSError指针的地址:
        如果写入成功，这个指针就是nil
        如果写入失败，这个指针就会指向一个错误对象，这个对象描述了发生错误的信息。
        这个对象的localizedDescription方法可以得到发生错误的简要信息。

        所以我们要判断是否写入成功，也可以判断这个指针的值是否是nil
        如果不想知道错误的原因，第四个参数传nil即可。
 
 
 
 返回值是BOOL类型的，代表是否写入成功。
 
 
 2. 从磁盘上的文件中读取文件中的内容。
    + (nullable instancetype)stringWithContentsOfFile:(NSString *)path encoding:(NSStringEncoding)enc error:(NSError **)error;
    第一个参数：文件的路径
    第二个参数：使用的编码，统一使用NSUTF8StringEncoding
    第三个参数：错误对象
 
 
 3. 使用URL来读写字符串的数据
    1） 优势：既可以读写本地磁盘文件
             还可以读写网页文件、FTP服务器上的文件
    2）不同类型的URL地址的写法
        -1. 本地磁盘文件： file:///Users/itcast/Desktop/1.txt
        -2. 网页地址：http://www.baidu.com
        -3. ftp文件的地址: ftp://server.itcast.cn/1.txt
 
    3) 将不同类型的地址封装在NSURL对象当中。
 
 */
int main(int argc, const char * argv[]) {
    
//    案例1：写入文件。
//    NSString *str = @"我是来自OC的字符串！";
//
//    NSError *err;
//
//    BOOL res = [str writeToFile:@"/Users/a/Desktop/abc.txt" atomically:NO encoding:NSUTF8StringEncoding error:&err];
//    if(res == YES) NSLog(@"写入成功");
//    else NSLog(@"写入失败");
//
//
////    也可以是检查 err 对象。
//    if(err != nil){
//        // 写入失败
//        NSLog(@"%@",err.localizedDescription);
//    } else {
//        NSLog(@"写入成功");
//    }
//    return 0;
    
    
//    案例2：读入文件
//    NSError *err;
//
//    NSString *str = [NSString stringWithContentsOfFile:@"/Users/a/Desktop/abc.txt" encoding:NSUTF8StringEncoding error:&err];
//
//    if(err != nil){
//        //说明失败
//        NSLog(@"读取失败！");
//    }else{
//        //说明成功
//        NSLog(@"%@",str);
//    }
    
    //    案例3：从网页上读取源文件,或者把文件写会去。
    
    NSURL *u1 = [NSURL URLWithString:@"file:///Users/a/Desktop/abc.txt"]; // 也可以为网页地址 http://www.baidu.com
    
    NSString *str = [NSString stringWithContentsOfURL:u1 encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"读取的结果：%@",str);
    
    NSString *strToWrite = @"即将写入的文本。";
    
    BOOL res = [strToWrite writeToURL:u1 atomically:NO encoding:NSUTF8StringEncoding error:nil];
    
    if(res == YES) NSLog(@"写入成功!");
    else NSLog(@"写入失败！");
    
}
