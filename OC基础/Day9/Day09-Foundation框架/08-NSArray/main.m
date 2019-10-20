//
//  main.m
//  08-NSArray
//
//  Created by a on 2019/10/18.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. C语言中的数组
    特点：
    a. 存储多个数据
    b. 类型相同
    c. 长度固定
    d. 每一个元素都是紧密相连的。
 
 2. NSArray
    1）是Foundation框架中的一个类，这个类的对象的作用是用来存储多个数据的，具备数组的功能。
        所以NSArray是OC中的数组。
    2）特点：
        a. 只能存储OC对象，任意的OC对象,无法存储非OC对象的数据
        b. 长度固定，一旦NSArray数据创建完毕之后，元素的长度固定，无法新增，也无法删除元素
        c. 每一个元素都是紧密相连的。每一个元素仍然有自己的下标。
        d. 元素的类型是id类型。
 
 3. NSArray 数组的创建
    1）因为这是一个类，所以当然就是创建NSArray对象

         NSArray *arr1 = [NSArray new];
         NSArray *arr2 = [[NSArray alloc] init];
         NSArray *arr3 = [NSArray array];
         NSLog(@"%@",arr1);
 
         这样创建出来的NSArray数组的元素的个数是0个，因为长度固定，所以没有任何意义。
 
    2）创建数组的同时，指定一个数组的元素
 
        + (instancetype)arrayWithObject:(ObjectType)anObject;
        NSArray *arr4 = [NSArray arrayWithObject:@"jack"];
 
     仍然没有意义，因为这个数组中只有一个元素
 
 
    3） 最常用的创建NSArray数组的方式
        + (instancetype)arrayWithObjects:(ObjectType)firstObj, ... NS_REQUIRES_NIL_TERMINATION;
 
         NSArray *arr = [NSArray arrayWithObjects:@"jack",@"rose",@"lili",@"hanmeimei",nil];
         NSLog(@"%@",arr);
 
        使用注意：
        - 1 只能存储OC对象，不能存储非OC对象。
        - 2 将元素写完以后，最后要写一个nil表示元素到此结束了。不写报错。
        - 3 如果将nil写在数组中间，nil后的元素不会被存到数组中
           NSArray *arr = [NSArray arrayWithObjects:@"jack",nil,@"lili",@"hanmeimei",nil]; 数组中只有一个"jack"
 
 
         可以存储任意类型的OC对象
         Person *p1 = [Person new];
         Person *p2 = [Person new];
         Person *p3 = [Person new];
         Person *p4 = [Person new];
         Person *p5 = [Person new];
 
 
         NSArray *arr = [NSArray arrayWithObjects:p1,p2,p3,p4,p5,nil];
 
     4) 创建NSArray数组的简要方式
 
 
        NSArray *arr = @[@"jack",@"rose",@"lili"];
 
        注意： 这种创建方式，不需要在最后加nil，加了会报错。因为nil的本质是0，不是OC对象。
 
 4. NSArray数组的使用
        1) 在NSLog函数中使用%@可以直接输出NSArray对象中所有的元素的值
        2）NSArray数组中不能存储基本数据类型，不能存储非OC对象。nil的本质就是0，所以nil无法存储到NSArray数组中。
        3）NSArray数组在创建之后无法新增和删除元素
 
 5. 取出存储在NSArray数组中的元素的值
 
    1）可以使用下标取出对应元素的值。
 
         NSArray *arr = @[@"jack",@"rose",@"lili"];
         NSLog(@"%@",arr);
 
         NSLog(@"%@",arr[0]);
      如果下标越界就直接运行报错
 
    2）调用数组对象的对象方法来取出指定下标的元素的值。
        - (ObjectType)objectAtIndex:(NSUInteger)index;
        NSArray *arr = @[@"jack",@"rose",@"lili"];
        NSString *str = [arr objectAtIndex:2];  //  lili
 
 
 6. NSArray其他的常用成员
    NSArray *arr = @[@"jack",@"rose",@"lili"];
    1) 得到NSArray数组中的元素的个数
        @property (readonly) NSUInteger count;

        NSLog(@"%lu",arr.count); // 3
 
    2)  判断NSArray数组中是否包含指定的元素
        - (BOOL)containsObject:(ObjectType)anObject;

        BOOL res = [arr containsObject:@"lili"];
 
    3）取到NSArray数组中的第一个元素
        @property (nullable, nonatomic, readonly) ObjectType firstObject
 
        NSLog(@"%@",arr.firstObject);
 
 
        arr[0] 与 arr,firstObject 的区别
 
        如果数组中没有任何元素 arr[0] 运行报错，firstObject 取到 nil 不报错
 
    4）取到NSArray数组中的最后一个元素
 
        @property (nullable, nonatomic, readonly) ObjectType lastObject;
        NSLog(@"%@",arr.lastObject);
 
    5) 查找指定元素NSArray数组中第一次出现的下标
         - (NSUInteger)indexOfObject:(ObjectType)anObject;
 
         NSUInteger index = [arr indexOfObject:@"lili"];
 
 
         if(index == NSNotFound){
             NSLog(@"没有找到");
             } else {
             NSLog(@"index = %lu ",index);
        }
 
        如果没有找到，返回的是NSUInteger的最大值
 
 7. NSArray数组的遍历
    NSArray *arr = @[@"jack",@"rose",@"lili",@"小明"];
    1）使用for循环来遍历数组中的每一个元素
 
         for(int i = 0; i < arr.count; i++){
            NSLog(@"%@",arr[i]);
         }
 
    2) 使用增强的for循环来遍历NSArray数组中的元素

        for...in 语法：
        for(元素类型 变量名 in 数组名){}
        直接通过变量名就可以拿到数组的每一个元素。
 
         for(NSString *str in arr){
            NSLog(@"%@",str);
         }
 
        声明在for()中的变量叫做迭代变量
        for循环的执行原理：
        将数组中的第一个元素的值赋值给迭代变量，执行循环体，
        将数组中的第二个元素的值赋值给迭代变量，执行循环体
        将数组中的第三个元素的值赋值给迭代变量，执行循环体
        ...
        将数组中的最后一个元素的值赋值给迭代变量，执行循环体，结束循环。
 
        语法总结：
        -> 迭代变量的类型和数组中的元素类型保持一致。
        -> 迭代变量的名称可以任意取.
 
        当NSArray数组中存储的数据的类型不一致的时候，建议使用id指针。遍历不同的元素的类型使用id类型的指针
 
         Person *p1 = [Person new];
         Person *p2 = [Person new];
         Person *p3 = [Person new];
 
         NSArray *arr = @[@"jack",@"rose",@"lili",@"小明",p1,p2,p3];
 
         for(id item in arr){
            NSLog(@"%@",item);
         }
 
    3）使用block遍历
        - (void)enumerateObjectsUsingBlock:(void (NS_NOESCAPE ^)(ObjectType obj, NSUInteger idx, BOOL *stop))block
 
 
        这是一个方法，这个方法的作用就是来遍历数组中的每一个元素
 
         NSArray *arr = @[@"jack",@"rose",@"lili",@"小明"];
         //    这个方法做的事情，将arr数组中的每一个元素遍历出来，当他将每一个元素遍历出来以后，处理元素的代码需要我们自己传递
         [arr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
         // obj 为每一个元素，idx为元素的下标
         NSLog(@"%lu: %@.length =  %lu",idx,obj,[obj length]);
 
         // 如果想停止遍历，则将 *stop = YES;
         }];
 
    8. NSArray 与字符串的两个方法
 
        1）componentsJoinedByString 将数组中的元素连接起来组成一个新的字符串
        - (NSString *)componentsJoinedByString:(NSString *)separator;
 
 
         NSArray *arr = @[@"jack",@"rose",@"lili",@"小明"];
         NSString *str = [arr componentsJoinedByString:@"#"];
         NSLog(@"%@",str);  // jack#rose#lili#小明
 
        2) componentsSeparatedByString  将字符串以指定的分隔符分成一个数组，每一个部分就是数组的一个元素
            将字符串中的字符分割，返回一个数组。
 
          - (NSArray<NSString *> *)componentsSeparatedByString:(NSString *)separator;
 
            NSString *str = @"北京,上海,天津,广州,福州";
            NSArray *arr = [str componentsSeparatedByString:@","];
            NSLog(@"%@",arr);
 
 
 
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {


    NSString *str = @"北京,上海,天津,广州,福州";
    NSArray *arr = [str componentsSeparatedByString:@","];
    
    for(NSString *item in arr){
        NSLog(@"%@",item);
    }
    
    
    return 0;
}
