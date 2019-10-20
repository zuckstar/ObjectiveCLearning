//
//  main.m
//  08-依赖关系
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    Phone *iPhone = [Phone new];
    Person *p1 = [Person new];
    
    [p1 callWithPhone:iPhone];
    
    return 0;
}
