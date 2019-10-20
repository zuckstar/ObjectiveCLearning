//
//  Person.m
//  09-copy
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)setName:(NSString *)name
{
    //    1.NSMutableString 对象
    //    NSString *name = [NSMutableString new];
    //    [name copy];
    _name = [name copy];
}
-(NSString *)name
{
    return _name;
}
@end
