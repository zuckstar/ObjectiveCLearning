//
//  Book.m
//  02-作业及结构体与类的区别
//
//  Created by a on 2019/7/20.
//  Copyright © 2019 Jamie. All rights reserved.
//

#import "Book.h"

@implementation Book
-(void)setName:(NSString *)name
{
    _name = name;
}
-(NSString *)name
{
    return _name;
}

-(void)setPublisherName:(NSString *)publisherName
{
    _publisherName = publisherName;
}
-(NSString *)publisherName
{
    return _publisherName;
}

-(void)setAuthor:(Author *)author
{
    _author = author;
}
-(Author *)author
{
    return _author;
}
-(void)setPublishDate:(Date)publishDate
{
    _publishDate = publishDate;
}
-(Date)publishDate
{
    return _publishDate;
}
@end
