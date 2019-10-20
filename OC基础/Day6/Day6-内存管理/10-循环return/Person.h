//
//  Person.h
//  10-循环return
//
//  Created by a on 2019/10/12.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,assign)Book *book;
-(void)read;
@end

NS_ASSUME_NONNULL_END
