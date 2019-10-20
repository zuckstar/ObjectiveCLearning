//
//  Book.h
//  02-作业及结构体与类的区别
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Author.h"

typedef struct
{
    int year;
    int month;
    int day;
} Date;
@interface Book : NSObject
{
    NSString *_name;
    NSString *_publisherName;
    Date _publishDate;
    // 作者
    Author *_author;
    
}
-(void)setName:(NSString *)name;
-(NSString *)name;

-(void)setPublisherName:(NSString *)publisherName;
-(NSString *)publisherName;

-(void)setAuthor:(Author *)author;
-(Author *)author;

-(void)setPublishDate:(Date)publishDate;
-(Date)publishDate;
@end
