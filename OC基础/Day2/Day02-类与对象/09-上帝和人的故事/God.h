//
//  God.h
//  09-上帝和人的故事
//
//  Created by a on 2019/6/26.
//  Copyright © 2019年 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gender.h"
#import "Person.h"
@interface God : NSObject
{
    @public
    NSString *_name;
    int _age;
    Gender _gender;
}
- (void)killWithPerson:(Person *)per;
- (Person *)makePerson;
- (Person *)makePersonWithName:(NSString *)name andAge:(int)age andGender:(Gender)gender andLeftLife:(int) leftife;
@end
