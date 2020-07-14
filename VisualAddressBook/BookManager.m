//
//  BookManager.m
//  BookManager
//
//  Created by 송이준 on 13/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import "BookManager.h"
#import "Book.h"

@implementation BookManager

// 책 배열 초기화 메소드
// BookManager 클래스를 인스턴스화 시키면서 alloc과 init을 통해 초기화 시키면 이 함수가 실행됨
// 예약 키워드인 init과 동일한 함수명이니까 일단 init을 상속받고 시작함
-(id)init {
    self = [super init];
    if(self){
        bookList = [[NSMutableArray alloc] init];
        
    }
    return self;
}

-(void)addBook:(Book *)bookObject {
    [bookList addObject: bookObject];
}

-(NSString *) showAllBook {
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    // bookList의 각 요소들은 Book클래스로부터 만들어진것임. 따라서 타입은 그 클래스명인 Book을 쓴다
    for(Book *bookTemp in bookList){
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Name : "];
        [strTemp appendString: bookTemp.name];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Genre : "];
        [strTemp appendString: bookTemp.genre];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"Author : "];
        [strTemp appendString: bookTemp.author];
        [strTemp appendString:@"\n"];
        [strTemp appendString:@"------------------------"];
        [strTemp appendString:@"\n"];
    }
    return strTemp;
}

-(NSUInteger)countBook {
    return [bookList count];
}

-(NSString *)findBook:(NSString *)name {
    NSMutableString *strTemp = [[NSMutableString alloc]init];
    
    for(Book *bookTemp in bookList){
        if([bookTemp.name isEqualToString:name]){
            [strTemp appendString:@"Name : "];
            [strTemp appendString: bookTemp.name];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Genre : "];
            [strTemp appendString: bookTemp.genre];
            [strTemp appendString:@"\n"];
            [strTemp appendString:@"Author : "];
            [strTemp appendString: bookTemp.author];
            return strTemp;
        }
    }
    return nil;
}

-(NSString *) removeBook:(NSString *)name {
    for(Book *bookTemp in bookList) {
        if([bookTemp.name isEqualToString:name]) {
            [bookList removeObject: bookTemp];
            return name;
        }
    }
    return nil;
}

@end
