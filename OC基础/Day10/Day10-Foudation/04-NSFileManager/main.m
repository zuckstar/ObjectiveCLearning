//
//  main.m
//  04-NSFileManager
//
//  Created by a on 2019/10/19.
//  Copyright © 2019 Jamie. All rights reserved.
//



/* 1. NSFileManager是Foundation框架提供的一个类
        这个类的作用：用来操作磁盘上的文件和文件夹，对他们来进行创建、删除、复制、拷贝、移动。。。
 
   2. NSFileManager是一个类
        这个类的对象是以单例模式创建的
        如何得到NSFileManager的一个单例对象
        调用这个类的方法，defaultManager 就可以得到这个类的单例对象
        NSFileManager *fileManager = [NSFileManager defaultManager];
 
    3. 常用方法之判断：
        1）判断指定的文件或者文件夹在磁盘上是否真实的存在。
            -（BOOL）fileExistsAtPath:(NSString *) path;
 
 eg:
         NSFileManager *manager = [NSFileManager defaultManager];
         NSString *path = @"/Users/a/Desktop/a.plist";
         BOOL res = [manager fileExistsAtPath:path];
         NSLog(@"%@",res == YES? @"yes":@"no");
 
        2) 判断指定的文件或者文件夹在磁盘上是否真实的存在。并且判断这个路径是一个文件夹路径还是一个文件路径
 
 eg:
             NSFileManager *manager = [NSFileManager defaultManager];
             NSString *path = @"/Users/a/Desktop/a.plist";
             BOOL flag = NO;
             BOOL res = [manager fileExistsAtPath:path isDirectory:&flag];
             NSLog(@"是否存在？%@",res == YES? @"yes":@"no");
             NSLog(@"是文件夹否？%@",flag == YES? @"yes":@"no");
 
            flag = YES 说明给定的路径是文件夹路径
            flag = NO 说明给定的路径是文件路径
 
        3) 判断指定的文件夹或者文件是否可以读取

            - (BOOL)isReadableFileAtPath:(NSString *)path;
 eg:
             NSFileManager *manager = [NSFileManager defaultManager];
             BOOL res = [manager isReadableFileAtPath:@"/Users/a/Desktop/a.plist"];
             NSLog(@"是否有权限读取？%@",res == YES? @"yes":@"no");
 
 
       4) 判断指定的文件夹或者文件是否可以写入
 
             NSFileManager *manager = [NSFileManager defaultManager];
             BOOL res = [manager isWritableFileAtPath:@"/Users/a/Desktop/a.plist"];
             NSLog(@"是否有权限写入？%@",res == YES? @"yes":@"no");
 
       5）判断指定的文件夹或者文件是否可以删除
 
             NSFileManager *manager = [NSFileManager defaultManager];
             BOOL res = [manager isDeletableFileAtPath:@"/Users/a/Desktop/a.plist"];
             NSLog(@"是否有权限删除？%@",res == YES? @"yes":@"no");
 
 
 4. 常见的方法之获取信息
        NSFileManager *manager = [NSFileManager defaultManager];
 
        1）获取指定文件夹或者文件的属性信息
             NSDictionary *dict = [manager attributesOfItemAtPath:@"/Users/a/Desktop/a.plist" error:nil];
             NSLog(@"%@",dict);
             NSLog(@"%@",dict[NSFileSize]);
 
        2）获取指定目下的所有的文件夹和目录，是拿到指定目录下的所有的文件和目录所有的子目录和子文件。子目录的后代和文件也都能拿到。
 
            NSDictionary *dict = [manager subpathsAtPath:@"/Users/a/Desktop"];
 
        3）获取指定目录下的所有的子目录和文件，不包含子孙辈目录
 
             NSDictionary *dict = [manager contentsOfDirectoryAtPath:@"/Users/a/Desktop" error:nil];
             NSLog(@"%@",dict);
 
 5. 常见方法之 文件/目录的创建
        1）在指定的目录创建文件
            - (BOOL)createFileAtPath:(NSString *)path contents:(nullable NSData *)data attributes:(nullable NSDictionary<NSFileAttributeKey, id> *)attr;
 
        第一个参数：要创建的文件的路径
        第二个参数：这个文件的内容。要传递这个文件的二进制格式。这个二进制的数据格式，要使用NSData对象来封装
                  NSData： 将别的格式的数据转换为二进制数据
                    - (nullable NSData *)dataUsingEncoding:(NSStringEncoding)encoding;
                  将字符串转换为NSData二进制的方式，就是调用字符串对象的
                  编码参数：NSUTFStringEncoding
                  指定一个编码，就可以将字符串转换为二进制数，存储在NSData对象之中
                  最后再将这个二进制对象通过这个方法写入。
                  如果想创建一个空文件，第二个参数就给nil
 
        第三个参数：指定创建的文件的属性，如果要使用系统的默认值就给nil
 
 eg:
         NSString *str = @"我爱北京天安门";
         NSData *data = [str dataUsingEncoding:NSUTF8StringEncoding];
         BOOL res = [manager createFileAtPath:@"/Users/a/Desktop/haha.txt" contents:data attributes:nil];
 
        2）在指定的目录创建文件夹
 
        - (BOOL)createDirectoryAtPath:(NSString *)path withIntermediateDirectories:(BOOL)createIntermediates attributes:(nullable NSDictionary<NSFileAttributeKey, id> *)attributes error:(NSError **)error
 eg:
         NSFileManager *manager = [NSFileManager defaultManager];
         //    BOOL res = [manager createDirectoryAtPath:@"/Users/a/Desktop/霸气/AA/BB" withIntermediateDirectories:NO attributes:nil error:nil];
         BOOL res = [manager createDirectoryAtPath:@"/Users/a/Desktop/霸气/AA/BB" withIntermediateDirectories:YES attributes:nil error:nil];
 
         if(res == YES) NSLog(@"创建成功");
         else NSLog(@"创建失败");
        第一个参数：路径
        第二个参数：YES，做一路创建，如果是NO就不会做一路创建
        第三个参数：指定属性，nil为系统默认属性
        第四个参数：错误对象
 
        3）拷贝文件
        - (BOOL)copyItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError **)error API_AVAILABLE(macos(10.5), ios(2.0), watchos(2.0), tvos(9.0));
 
 
         BOOL res = [manager copyItemAtPath:@"/Users/a/Desktop/a.plist" toPath:@"/Users/a/Desktop/霸气/a.plist" error:nil];
         if(res == YES) NSLog(@"成功");
         else NSLog(@"失败");
 
        4）移动文件、剪切、文件的重命名
            移动文件或者叫剪切，此时也可以重新命名移动的文件。
            重命名的原理：将文件移动到原来的目录并改名
            - (BOOL)moveItemAtPath:(NSString *)srcPath toPath:(NSString *)dstPath error:(NSError **)error
                 BOOL res = [manager moveItemAtPath:@"/Users/a/Desktop/a.plist" toPath:@"/Users/a/Desktop/霸气/b.plist" error:nil];
 
        5）删除文件
                BOOL res = [manager removeItemAtPath:@"/Users/a/Desktop/haha.txt" error:nil];
 
        注意：删除的文件不会倒到废纸篓而是直接删除，请小心使用
 
 
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {

    
    NSFileManager *manager = [NSFileManager defaultManager];
    
    
//    BOOL res = [manager copyItemAtPath:@"/Users/a/Desktop/a.plist" toPath:@"/Users/a/Desktop/霸气/a.plist" error:nil];
    
    BOOL res = [manager removeItemAtPath:@"/Users/a/Desktop/haha.txt" error:nil];
    if(res == YES) NSLog(@"成功");
    else NSLog(@"失败");
    
    
    
    
    
    
    
    
    
    return 0;
}
