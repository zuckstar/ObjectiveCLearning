//
//  Person.h
//  10-NSObject和id类型
//
//  Created by a on 2019/8/3.
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
