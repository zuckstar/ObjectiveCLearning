//
//  Person.m
//  Day6-内存管理
//
//  Created by a on 2019/8/8.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(instancetype)init {
    if(self = [super init]) {
        self.name = @"jack";
        self.age = 19;
    }
    return self;
}
-(instancetype)initWithName:(NSString *)name andAge:(int)age {
    if(self = [super init]) {
        self.name = name;
        self.age = age;
    }
    return self;
}
@end
















