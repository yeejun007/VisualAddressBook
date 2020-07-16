//
//  Book.m
//  BookManager
//
//  Created by 송이준 on 12/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import "Book.h"

@implementation Book
@synthesize name, genre, author;

-(void) bookPrint {
    NSLog(@"--- Printing this object's book information ---");
    NSLog(@"Name : %@", name);
    NSLog(@"genre : %@", genre);
    NSLog(@"author : %@", author);
}

@end
