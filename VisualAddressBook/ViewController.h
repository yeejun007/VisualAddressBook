//
//  ViewController.h
//  VisualAddressBook
//
//  Created by 송이준 on 14/07/2020.
//  Copyright © 2020 yeejun. All rights reserved.
//

#import <UIKit/UIKit.h>

// 헤더파일에서는 import 안쓰고 @class를 사용해서 해당 클래스가 존재한다고 컴파일러에게 알려준다
@class BookManager;
@interface ViewController : UIViewController {
    BookManager *myBook;
}

// showAllBook 메소드를 실행시키는 메소드 만들기
-(IBAction)showAllBookAction: (id)sender;

@end

