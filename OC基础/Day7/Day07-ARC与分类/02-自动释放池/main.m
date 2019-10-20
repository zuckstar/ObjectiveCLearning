//
//  main.m
//  02-自动释放池
//
//  Created by a on 2019/10/13.
//  Copyright © 2019 Jamie. All rights reserved.
//
/*
 1. 自动释放池的原理
    存入到自动释放池中的对象，在自动释放池被销毁的时候，会自动调用存储在该自动释放池的所有对象的release方法。
 
    可以解决的问题：
    将创建的对象，存入到自动释放池之中，就不再需要手动地release这个对象了。
    因为池子销毁的时候，就会自动调用池中所有的对象的release。
 
    自动释放池的好处，将创建的对象存储到自动释放池中，不再需要写release
 
 2. 如何创建自动释放池
 @autoreleasepool{
 
 }
    这对大括弧代表这个自动释放池的范围。

 3. 如何将对象存储到自动释放池之中
    在自动释放池之中调用对象的autorelease方法，就会将这个对象存入到当前自动释放池之中。
    这个autorelease方法返回的是对象本身，所以m我们可以这么写
 
    @autoreleasepool
    {
        Person *p1 = [[[Person alloc] init] autorelease];
    }
 
    这个时候，当这个自动释放池执行完毕之后，就会立即为这个自动释放池中的对象发送一个条release消息。
    目前为止，我们感受到的autorelease的好处：
    创建对象，调用对象的autorelease方法，将对象存入到当前的自动释放池之中。
    我们就不需要再去release，因为自动释放池销毁的时候，就会自动地调用池中所有对象的release
 
 4. 使用注意
    1）只有在自动释放池中调用了对象的autorelease之后这个对象才会被存储到这个自动释放池之中。如果只是将对象的创建代码写在自动释放池之中，没有调用
        对象的autorelease方法，是不会将这个对象存储到这个自动释放池之中的
    2）对象的创建可以在自动释放池的外面，在自动释放池中调用对象的autorelease方法，就可以将这个对象存储到这个自动释放池之中。
 
    3）如果对象的autorelease方法的调用在自动释放池的外面，是无法将其存储到这个自动释放池之中的。
 
    4）当自动释放池结束的时候，仅仅是对存储在自动释放池中的对象发送一条release消息，而不是销毁对象。
 
    5）如果在自动释放池中调用一个对象的autorelease多次，就会将对象存储多次到自动释放池之中，在自动释放池结束的时候，会为对象发送多小release消息。
        所以，1一个自动释放池之中，只autorelease1次，只将这个对象放一次，否则就会出现野指针错误。
 
    6）如果在自动释放池中，调用了存储到自动释放池中的对象的release方法，在自动释放池结束的时候，还会再次调用对象的release方法，这个时候也有可能造成
        野指针的错误。
 
        也可以调用存储在自动释放池中的对象的retain方法。
 
    7）将对象存储到自动释放池，并不会使对象的引用计数器+1，所以j其好处就是创建对象将对象存储在自动释放池，就不需要再写个release了。
 
    8）自动释放池可以嵌套
        调用对象的autorelease方法，会将对象加入到当前的自动释放池之中，只有在当前的自动释放池结束的时候才会向对象发送release消息。
 
    autoreleasepool 的作用就是省略创建对象时的release！
 5. autorelease的规范
    0）创建对象，将对象存储到自动释放池之中，就不需要再去手动地release
 
 
    1）类方法的第一个规范
        一般情况下，要求提供与自定义构造方法相同功能的类方法，这样可以快速地创建一个对象。
 
 
    2）一般情况下，我们写一个类，会为我们的类写一个同名的类方法，用来让外界调用类方法来快速的得到一个对象。
        规范：使用类方法创建的对象，要求这个对象在类方法中就已经被autorelease过了。
        这样，我们只要在自动释放池当中，调用类方法类创建对象，那么创建的对象就会被自动地加入到释放池中。
 
 
        提供一个类方法来快速地得到一个对象，该对象要被autorelease过
 6. 实际上Apple的框架中的类也是遵守这个规范的
        通过类方法创建的对象都已经是被autorelease过的了。
        所以我们也要遵守这个规范，类方法返回的对象也要被autorelease过。
        以后，我们凡是创建对象是调用类方法创建的对象，这个对象已经是被autorelease过的了。
 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Pig.h"

int main(int argc, const char * argv[]) {
    
    
//   案例1
////    自动释放池唯一的作用，省略创建对象匹配的那个release
//    @autoreleasepool {
//        Person *p1 = [[Person new] autorelease];  // 等同于 [[[Person alloc] init] autorelease];
//    }
//
////    上面的代码等同于以下代码
////    Person *p1 = [Person new];
////    [p1 release];
    
    
//    案例2
    
    
//    Pig *p1 = [[Pig alloc] initWithName:@"八戒" andAge:2 andWeight:260];
//    Pig *p2 = [Pig pigWithName:@"八戒" andAge:2 andWeight:260];
    @autoreleasepool {
        
//        此时返回的P3已经autorelease过了。参照autorelease规范二
        Pig *p3 = [Pig pigWithName:@"八戒" andAge:2 andWeight:260];
        
        NSString *str = [[NSString alloc] initWithFormat:@"jack"]; // 对象方法：没有autorelease
        NSString *str1 = [NSString stringWithFormat:@"jack"]; // 类方法：已经被autorelease
    }
    
    
    return 0;
}
