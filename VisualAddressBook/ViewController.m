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
@synthesize resultTextView, nameTextField, genreTextField, authorTextField;

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
    
    // countBook 함수가 리턴하는 integer 타입의 값을 문자 타입으로 변경시켜주고 countLabel에 넣는다
    _countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
}

-(IBAction)showAllBookAction: (id)sender {
    // showAllBook이 리턴하는 값의 타입도 NSString이라서 이렇게 하는게 가능함
    resultTextView.text = [myBook showAllBook];
    // 아래와 같이 써도 됨
//    [resultTextView setText:[myBook showAllBook]];
}

// 버튼에 이을 함수임. (Touch up inside로 함수와 버튼을 이어준다)
-(IBAction)addBookAction: (id)sender {
    // Book 클래스 하나 인스턴스화시켜서 dict 하나 만들기
    Book *bookTemp = [[Book alloc]init];
    bookTemp.name = nameTextField.text;
    bookTemp.genre = genreTextField.text;
    bookTemp.author = authorTextField.text;
    
    [myBook addBook:bookTemp];
    _countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
    resultTextView.text = @"책이 추가되었습니다";
    
}

// 이거도 storybook 가서 함수와 버튼 컴포넌트를 이어주기 (Touch up inside: 버튼 눌렀을때 쑥 들어갔다가 나옴)
-(IBAction)findBookAction: (id)sender {
    // nameTextField에 들어와있는 값을 가져와서 책을 검색하도록 한다
    NSString *strTemp = [myBook findBook: nameTextField.text];
    if(strTemp != nil) {
        resultTextView.text = strTemp;
    }else {
        resultTextView.text = @"찾으시는 책이 없네요..";
    }
}

// 책 배열 안에 해당 책이 있으면 찾아서 삭제하는 함수
-(IBAction)removeBookAction: (id)sender {
    NSString *strTemp = [myBook removeBook: nameTextField.text];
    if(strTemp != nil) {
        // c에서는 + 연산 기호로 문자를 이을수가 없다
        NSMutableString *str = [[NSMutableString alloc]init];
        [str appendString: strTemp];
        [str appendString: @" 책이 삭제되었습니다"];
        _countLabel.text = [NSString stringWithFormat: @"%li", [myBook countBook]];
        resultTextView.text = str;
    }else {
        resultTextView.text = @"지우려는 책이 없네요..";
    }
}


@end
