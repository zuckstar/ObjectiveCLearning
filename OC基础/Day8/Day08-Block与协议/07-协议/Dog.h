//
//  Dog.h
//  07-协议
//
//  Created by a on 2019/10/16.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MyProtocol.h"
#import "YourProtocol.h"
@interface Dog : NSObject <MyProtocol, YourProtocol>
    
@end
