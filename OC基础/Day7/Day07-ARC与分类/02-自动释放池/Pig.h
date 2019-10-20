//
//  Pig.h
//  02-自动释放池
//
//  Created by a on 2019/10/13.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pig : NSObject
@property(nonatomic,retain)NSString *name;
@property(nonatomic,assign)int age;
@property(nonatomic,assign)float weight;

-(instancetype)initWithName:(NSString *)name andAge:(int)age andWeight:(float)weight;

+(instancetype)pig;

+(instancetype)pigWithName:(NSString *)name andAge:(int)age andWeight:(float)weight;
@end

NS_ASSUME_NONNULL_END
