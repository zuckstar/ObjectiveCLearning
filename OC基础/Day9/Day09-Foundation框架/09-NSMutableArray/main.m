//
//  main.m
//  09-NSMutableArray
//
//  Created by a on 2019/10/18.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. NSMutableArray是NSArray的子类
 
    1）NSMutableArray仍然是个数组，具备NSArray的特点
        只能存储OC对象，每一个元素都是紧密相连的。
 
    2）NSMutableArray相对于父类做扩展：NSMutableArray数组的元素可以动态地新增和删除。
        其他的用法均与NSArray一致。
 
 
        NSArray数组一旦创建，其元素的个数就固定，无法新增或删除。其他用法和父类一样。
 
2. NSMutableArray的创建
 
     NSMutableArray *arr = [NSMutableArray new];
     NSMutableArray *arr2 = [[NSMutableArray alloc] init];
     NSMutableArray *arr3 = [NSMutableArray array];
 
    这样创建出来的数组对象，数组的元素是0，仍然是有意义的，因为我们可以动态地新增和删除元素。
 
    也可以使用这样的方式来创建可变数组对象，这个数组的元素可以新增和删除
    NSMutableArray *arr4 = [NSMutableArray arrayWithObjects:@"jack",@"rose",@"lili",nil];
 
 
    最容易犯的错，这样写是不行的：NSMutableArray *arr5 = @[@"jack",@"rose",@"lili"];
    @[@"jack",@"rose",@"lili"]; 是一个NSArray对象，arr5是一个子类指针。当子类指针指向父类的时候，有可能会出问题。
 
 

 --- 插入 ---
 1. 任意的指针其实可以指向任意的对象。编译器不会报错，只会给一个警告。

 2. 虽然语法上指针可以随意指向任意的对象，但是最好不要这样写，因为运行时可能会出错。

    当我们调用指针类型特有的方法的时候。
 ------------
 
 NSMutableArray *arr1 = [NSMutableArray new];
 
 3. 如何往数组中新增元素
 
    - (void)addObject:(ObjectType)anObject;  将传入的参数作为数组的元素添加进去。
 
     NSLog(@"arr1.Count = %lu", arr1.count);
     [arr1 addObject:@"jack"];
     [arr1 addObject:@"jack"];
     NSLog(@"arr1.Count = %lu", arr1.count);
 
 4. 将另外的一个数组中的每一个元素都添加到可变数组中
 
    - (void)addObjectsFromArray:(NSArray<ObjectType> *)otherArray;
 
     NSArray *arr = @[@"jack",@"rose",@"lili"];
     [arr1 addObjectsFromArray:arr];
 
 5. 在可变数组中指定的下标处插入一个元素
 
     - (void)insertObject:(ObjectType)anObject atIndex:(NSUInteger)index;
 eg:
     NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"jack",@"rose",@"lili",nil];
     [arr insertObject:@"lilei" atIndex:1];
 
     NSLog(@"%@", arr);
 
 6. 删除数组中指定下标的元素
 
 eg:
    [arr removeObjectAtIndex:1];
 
 7. 删除数组中所有的特定的元素
    [arr removeObject:@"lili"];
 
 8. 删除数组指定范围内的元素
    [arr removeObject:@"lili" inRange:NSMakeRange(0, 3)];
 
 9. 删除数组中的最后一个元素
    [arr removeLastObject];
 
 10. 删除数组中的所有元素
 
    [arr removeAllObjects];
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
//    案例1
//    NSMutableArray *arr1 = [NSMutableArray new];
//
//
//    NSLog(@"arr1.Count = %lu", arr1.count);
//    [arr1 addObject:@"jack"];
//    [arr1 addObject:@"jack"];
//    NSArray *arr = @[@"jack",@"rose",@"lili"];
//    [arr1 addObjectsFromArray:arr];
//    NSLog(@"%@,arr1.Count = %lu", arr1,arr1.count);
    
    
//    案例2
    NSMutableArray *arr = [NSMutableArray arrayWithObjects:@"lili",@"rose",@"lili",@"lili",nil];
    [arr insertObject:@"lilei" atIndex:1];
//    [arr removeObjectAtIndex:1];
//    [arr removeObject:@"lili"];
//    [arr removeObject:@"lili" inRange:NSMakeRange(0, 3)];
//    [arr removeLastObject];
    
    [arr removeAllObjects];
    NSLog(@"%@", arr);
    
    return 0;
}
