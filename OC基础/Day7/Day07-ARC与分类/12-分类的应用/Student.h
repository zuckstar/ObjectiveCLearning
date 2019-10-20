//
//  Student.h
//  12-分类的应用
//
//  Created by a on 2019/10/14.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
@property(nonatomic,strong)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,strong)NSString *stuNumber;
@end

NS_ASSUME_NONNULL_END
