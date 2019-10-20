//
//  Book.h
//  10-循环return
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,retain)Person *owner;
-(void)castData;
@end

NS_ASSUME_NONNULL_END
