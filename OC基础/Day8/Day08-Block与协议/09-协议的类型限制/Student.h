//
//  Student.h
//  09-协议的类型限制
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StudyProtocol.h"
#import "MyProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject <StudyProtocol,MyProtocol>

@end

NS_ASSUME_NONNULL_END
