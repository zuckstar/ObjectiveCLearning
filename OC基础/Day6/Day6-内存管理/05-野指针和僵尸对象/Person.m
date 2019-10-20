//
//  Person.m
//  05-野指针和僵尸对象
//
//  Created by a on 2019/10/11.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)dealloc {
    NSLog(@"对象已经回收");
    [super dealloc];
}
-(void)sayHi {
    NSLog(@"hihihi");
}
@end
