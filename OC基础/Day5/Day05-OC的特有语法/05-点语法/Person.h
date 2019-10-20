//
//  Person.h
//  05-点语法
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    GenderMale,
    GenderFemale
} Gender;

@interface Person : NSObject
{
    NSString *_name;
    int _age;
    Gender _gender;
    
}
-(void)setName:(NSString *)name;
-(NSString *)name;
-(void)setGender:(Gender)gender;
-(Gender)gender;
-(void)setAge:(int)age;
-(int)age;
@end
