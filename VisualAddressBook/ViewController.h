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

// showAllBook 메소드를 실행시키는 메소드 만들기 / IB = Interface Build
-(IBAction)showAllBookAction: (id)sender;

// textfield와 연결지을 메소드 만들기
// 유저와의 상호작용을 통한 액션이 아니라, 단순히 어떤 UI 요소를 컨트롤 하고싶은 경우에 IBOutlet을 사용한다
// 스토리보드에서 identity를 보면 해당 요소가 어떤 class인지 알수 있다
// property를 통해 getter, setter 동시에 선언했으면 implementaion 부분에서 synthesize 꼭 해주기
@property (nonatomic, strong) IBOutlet UITextView *resultTextView;

@end

