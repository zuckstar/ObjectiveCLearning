//
//  Person.h
//  11-动态类型检查
//
//  Created by a on 2019/8/4.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    GenderMale,
    GenderFemale
} Gender;

@interface Person : NSObject
@property NSString *name;
@property int age;
@property Gender gender;
-(void)sayHi;

//+(Person *)person;
+(instancetype)person;

@end
