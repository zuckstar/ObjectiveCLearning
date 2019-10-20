//
//  Student.h
//  01-继承的本质
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Person.h"

@interface Student : Person
{
    NSString *_stuNumber;
}
-(void)study;
@end
