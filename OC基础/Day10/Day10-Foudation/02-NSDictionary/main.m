//
//  main.m
//  02-NSDictionary
//
//  Created by a on 2019/10/19.
//  Copyright © 2019 Jamie. All rights reserved.
//


/*
 1. NSArray 与 NSMutableArray 是OC中的数组
    存储数据的一个特点：每一个元素紧密相连，并且每一个元素当中，都是直接存储的值。
    缺点：数组元素的下标不固定。都有可能会发生变化。无法通过下标来唯一确定数组中的元素
 
    希望有一种存储数据的方式，存储到数组中，可以快速且唯一地确定数组的元素。
    存储数据的时候，必须要为存储的数据取一个别名。
    这个别名的作用：就是用来确定别名对应的数据
    要找存储在数组中的数据，使用别名来找，而不是通过下标来找。因为下标有可能会发生变化
 
    这种存储数据的方式就叫做键值对的存储方式。
    key-value
    key 就是键  value就是真正存储的值
 
  2. NSDictionary 与 NSMutableDictionary
 
    1)  他们是数组，他们就是以键值对的形式存储数据的。
        往这个数组中存储数据的同时，必须要指定这个数据的别名才可以。
        要找到存储在这个数组中的数据，就是通过别名来找，而不是通过下标
 
  3. NSDictonary 字典数组
 
    1）存储数据的原理
        a. 以键值对的形式存储数据
        b. 字典数组一旦创建，其中的元素就无法动态地新增和删除
        c. 键：只能是遵守了NSCoping协议的对象，而NSString就是遵守了这个协议
           值：只能是OC对象
 
    2）创建字典数组
 
         NSDictionary *dict1 = [NSDictionary new];
         NSDictionary *dict2 = [[NSDictionary alloc] init];
         NSDictionary *dict3 = [NSDictionary dictionary];
 
         这种方式创建出来的字典数组中没有任何元素，所以没有任何意义。
 
    3）一般创建方式
 
        NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"深圳市",@"address", nil];
 
        将数组的值和键挨个地写在后面初始化即可。（先写值，再写键名）
 
 
    4) 简要的创建方式
        NSDictionary *dictionary = @{@"name":@"rose",@"age",@"18",@"address":@"beijing"};
        @{键1:值1，键2：值2，键3：值3}；
 
    4. NSDictionary 的使用方式
        - 1. 如何取出存储在字典数组中的数据
            a. 存储在字典中的元素不能使用下标去取，而是用键，也就是别名去取。
                -> 使用中括号的方式，字典数组名[键] ； 这样就可以取到字典数组中这个键对应的值。
                   NSLog(@"%@",dict[@"name"]); 取出dict字典数组中@”name“这个键对应的值
                -> 调用字典数组对象的方法也可以取出键对应的值
                    -(nullable ObjectType)objectForKey:(KeyType)akey;
                    如果给定的key在数组中不存在，则取到的值是nil，不会报错
 
        - 2. 取到字典数组的键值对的个数。
            @property （readonly）NSUInteger count;
        - 3. 往字典数组中存储键值对的时候，键不允许重复。
            如果重复，后加的无效
 
    5. 遍历字典数组
        1）字典数组中的数据无法使用下标去取，所有普通的for循环遍历下标法就无法使用。
        2) 使用 for in 循环，遍历出来的都是数组的键。再通过键取出对应的值。
 
         NSDictionary *dict = @{@"name":@"rose",@"age":@"18",@"address":@"beijing"};
         for(id item in dict) {
            NSLog(@"%@ = %@",item,dict[item]);
         }
        3）使用block遍历
 
         [dict enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
         NSLog(@"%@ = %@",key,obj);
 
    6. 字典数组存储数据的原理
        hash算法，冲突解决算法。
        1) 当往字典数组中存储一个键值对的时候，这个键值对应该存储在下标利用hash算法求解出来
        2）取值的时候，也是根据键做hash算法，就可以算出这个键值对存储的下标，然后直接找到下标的数据取出即可。
 
        与NSArray相比
 
        1）NSArray 数组的元素，连续的顺序存储，字典数组不是顺序添加存储，存储的下标是算出来的。
        2）存储的效率，NSArray 更高，因为 NSDictionary 需要进行hash计算存储的下标
 
        3）取的时候，如果取值的时候，是全部的值，则NSArray的效率更高，如果取值的时候，只取数组中指定的几个元素，则字典数组的效率更高。
 
 
 1. NSMutableDictionary
    1）是NSDictionary的子类，所以NSMutableDictionary也是一个字典数组，也是以键值对的形式存储数据的。
    2）重点：NSMutableDictionary在父类的基础上所做的扩张。
 
      存储在其中的元素可以动态地新增和删除
 
    3）创建可变字典数组
 
         NSMutableDictionary *dict1 = [NSMutableDictionary new];
         NSMutableDictionary *dict2 = [[NSMutableDictionary alloc] init];
         NSMutableDictionary *dict3 = [NSMutableDictionary dictionary];
 
        这样创建出来的可变字典的数组长度为0，因为可以动态地新增和删除
            NSMutableDictionary *dict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"18",@"age", nil];
 
        在创建可变字典数组的同时，初始化键值对。
            NSMutableDictionary *dict1 = @{} 这样是不行的，不能使用不可变字典数组的简便方法来创建。
 
 2. 如何新增键值对
     NSMutableDictionary *dict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"18",@"age", nil];
 
 
     [dict1 setObject:@"广州市XX街道" forKey:@"address"];
     [dict1 setObject:@"187.1" forKey:@"height"];
     NSLog(@"%@",dict1);
 
 
    如果键值有重复，后添加的就会替换原有的。
 
 3. 如何删除键值对
 
         [dict1 removeAllObjects]; 删除所有的键值对。
 
         [dict1 removeObjectForKey:@"age"]; 删除key为age（指定的）的键值对
 
 4. 把可变字典写到文件(数据持久化)
 
        BOOL res = [dict1 writeToFile:@"/Users/a/Desktop/dict.plist" atomically:NO];
 
 5. 从文件中读取字典
 
         NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/a/Desktop/dict.plist"];
 */
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    
    
//    NSDictionary *dict = @{
//                           @"name":@"rose",
//                           @"age":@"18",
//                           @"address":@"beijing",
//                           @"weight":@"45"
//                           };
//
//    NSLog(@"%@",dict); // 打印的顺序按照键的ASCII
    
    
//    NSMutableDictionary *dict1 = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"jack",@"name",@"18",@"age", nil];
//
//
//    [dict1 setObject:@"广州市XX街道" forKey:@"address"];
//    [dict1 setObject:@"187.1" forKey:@"height"];
//    [dict1 setObject:@"xiaodong" forKey:@"name"];

    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:@"/Users/a/Desktop/dict.plist"];
    
    
    NSLog(@"%@",dict);
    return 0;
}
