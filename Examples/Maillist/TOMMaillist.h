//
//  TOMMaillist.h
//  TomContactHelper
//
//  Created by mac on 2016/10/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Contacts/Contacts.h>
#import <ContactsUI/ContactsUI.h>

@interface TOMMaillist : NSObject <CNContactPickerDelegate>
{
    __weak UIViewController *_viewController;
}

@property (nonatomic,copy) void (^block)(NSDictionary *passDict);

+ (TOMMaillist *)sharedInstans;
/*
 * passDict中三个key值对应：
 * familyName:姓
 * givenName:名
 * labValue:电话号码
 */
- (void)maillistUsingViewController:(UIViewController *)controller UsingBlock:(void (^)(NSDictionary *passDict))block;

@end
