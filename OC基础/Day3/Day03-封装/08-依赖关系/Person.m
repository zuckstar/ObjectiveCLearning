//
//  Person.m
//  08-依赖关系
//
//  Created by a on 2019/7/6.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)callWithPhone:(Phone *)phone
{
    [phone callWithNumber:@"110"];
}
@end
