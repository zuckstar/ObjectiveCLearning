//
//  Book.h
//  09-@class
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Person;
NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject
//书名
@property(nonatomic,retain)NSString *name;
//作者名字
@property(nonatomic,retain)NSString *authorName;
//书有一个拥有者，是人
@property(nonatomic,retain)Person *owner;

-(void)castData;
@end

NS_ASSUME_NONNULL_END
