//
//  ViewController.m
//  VisualAddressBook
//
//  Created by 송이준 on 14/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import "ViewController.h"
#import "Book.h"
#import "BookManager.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize resultTextView;

// 이전에 콘솔에서 코딩할떄의 main 파일에 위치한 초기화 코드는 viewDidLoad에 넣어주면 된다
- (void)viewDidLoad {
    [super viewDidLoad];
    Book *book1 = [[Book alloc] init];
    book1.name = @"햄릿";
    book1.genre = @"비극";
    book1.author = @"셰익스피어";
            
    Book *book2 = [[Book alloc] init];
    book2.name = @"누구를 위하여 종을 울리나";
    book2.genre = @"전쟁소설";
    book2.author = @"헤밍웨이";
    
    Book *book3 = [[Book alloc] init];
    book3.name = @"죄와 벌";
    book3.genre = @"사실주의";
    book3.author = @"톨스토이";
            
    
//    BookManager *myBook = [[BookManager alloc]init];
    // 헤더파일에 글로벌 변수로 선언하고 여기서는 그 글로벌 변수를 가져와서 사용하도록 한다(클래스 스코프 내에서의 글로벌인듯)
    // 다른 메소드들에서도 myBook 변수에 접근해서 사용할 수 있도록 하기 위함
    myBook = [[BookManager alloc]init];
    
    [myBook addBook:book1];
    [myBook addBook:book2];
    [myBook addBook:book3];
}

-(IBAction)showAllBookAction: (id)sender {
    // showAllBook이 리턴하는 값의 타입도 NSString이라서 이렇게 하는게 가능함
    resultTextView.text = [myBook showAllBook];
    // 아래와 같이 써도 됨
//    [resultTextView setText:[myBook showAllBook]];
}


@end
