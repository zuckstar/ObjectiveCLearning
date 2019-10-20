//
//  Person.h
//  07-@sythesize
//
//  Created by a on 2019/7/28.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int _age;
    NSString *_name;
    float _height;
    float _weight;
    
}
@property float height,weight;
@property int age;
@property NSString *name;
@end
