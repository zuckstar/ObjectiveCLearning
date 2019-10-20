//
//  Person.h
//  09-copy
//
//  Created by a on 2019/10/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
{
    NSString *_name;
}
-(void)setName:(NSString *)name;
-(NSString *)name;
@property(nonatomic,copy)NSString *country;
@end

NS_ASSUME_NONNULL_END
