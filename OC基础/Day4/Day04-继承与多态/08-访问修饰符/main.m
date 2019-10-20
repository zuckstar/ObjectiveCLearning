//
//  main.m
//  08-访问修饰符
//
//  Created by a on 2019/7/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

/*
  1. 访问修饰符： 用来修饰属性，可以限定对象的属性在那一段范围之间访问
     @private 私有符,被@private修饰的属性只能在本类的内部访问，只能在本类的方法实现中访问
     @protected 受保护的，被@protected修饰的属性只能在本类和被类的子类中访问。只能在本类和子类的方法实现中访问。
     @package 被@package修饰的属性，可以在当前框架中访问
     @public 公共的，被@public修饰的属性，可以在任意的地方访问
 
  2. 如果不为属性指定访问修饰符，那么默认的就是 @protected 受保护的
  3. 子类仍然可以继承父类的私有属性，但是在子类中无法去直接访问从父类继承过来的私有属性。
     但是如果父类中有一个方法在为属性赋值或者取值，那么子类可以调用这个方法间接的访问父类的私有属性。
 
  4. 访问修饰符的作用域
     从写访问修饰符的地方往下，直到遇到另外一个访问修饰符或者结束大括弧为止，中间的所有属性都应用这个访问修饰符
 
  5. 使用建议
     1）@public 无论什么情况下都不要使用，属性不要直接暴露给外界
     2）@private 如果属性只想在本类中使用，不想在子类中使用，那么就使用它
     3）@protected 如果你希望属性只在本类和子类中使用，推荐使用默认的 @protected
 
  6. 访问修饰符只能用来修饰属性，不能用来修饰方法 
 */
#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
int main(int argc, const char * argv[]) {
    
    Student *s1 = [Student new];
    
    
    
    return 0;
}
