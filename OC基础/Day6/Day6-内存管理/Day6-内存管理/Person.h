//
//  Person.h
//  Day6-内存管理
//
//  Created by a on 2019/8/8.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
@property NSString *name;

-(instancetype)initWithName:(NSString *)name andAge:(int)age;
@end
