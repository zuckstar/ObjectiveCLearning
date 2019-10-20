//
//  Student.h
//  05-继承
//
//  Created by a on 2019/7/14.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import "Person.h"

@interface Student : Person
{
    NSString *_number;
    
}
-(void)setNumber:(int)number;
-(int)number;
@end
