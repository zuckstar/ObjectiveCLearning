//
//  CZNumber.h
//  10-NSNumber
//
//  Created by a on 2019/10/18.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CZNumber : NSObject
@property(nonatomic,assign)int intValue;
-(instancetype)initWithIntValue:(int)value;
+(instancetype)numberWithIntValue:(int)value;

@end

NS_ASSUME_NONNULL_END
