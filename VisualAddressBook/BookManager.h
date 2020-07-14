//
//  BookManager.h
//  BookManager
//
//  Created by 송이준 on 13/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// 보통 선언부인 header파일에는 import를 하지않는다.(.m 파일에 주로 import한다)
// 대신 class 키워드로 Book이라는 클래스가 있으니까 프리컴파일에서 에러 내지말라고 알려준다
// 이렇게 class를 사용하면 import를 쓰는거보다 컴파일이 더 빨라진다
@class Book;
@interface BookManager : NSObject {
    NSMutableArray *bookList;
}
// 메서드 생성하기
// Book클래스를 인자로 받는 메소드
-(void)addBook: (Book *) bookObject;
-(NSString *) showAllBook;

// implementation에서 사용할 count 메소드가 NSUInteger 타입을 리턴하기 때문
-(NSUInteger) countBook;
-(NSString *) findBook:(NSString *)name;
-(NSString *) removeBook:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
