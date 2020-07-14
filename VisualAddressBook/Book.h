//
//  Book.h
//  BookManager
//
//  Created by 송이준 on 12/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Book : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *genre;
@property (nonatomic, strong) NSString *author;

-(void) bookPrint;
@end

NS_ASSUME_NONNULL_END 
