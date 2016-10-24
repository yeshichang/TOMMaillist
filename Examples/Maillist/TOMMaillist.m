//
//  TOMMaillist.m
//  TomContactHelper
//
//  Created by mac on 2016/10/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "TOMMaillist.h"

@implementation TOMMaillist

+ (TOMMaillist *)sharedInstans {
    static TOMMaillist *maillist;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        maillist = [[self alloc] init];
    });
    return maillist;
}

- (void)maillistUsingViewController:(UIViewController *)controller UsingBlock:(void (^)(NSDictionary *passDict))block {
    _viewController = controller;
    self.block = block;
    CNContactPickerViewController * contactVc = [CNContactPickerViewController new];
    contactVc.delegate = self;
    [controller presentViewController:contactVc animated:YES completion:^{
    }];
}



-(void)contactPicker:(CNContactPickerViewController *)picker didSelectContact:(CNContact *)contact {
    NSMutableDictionary *passDict = [NSMutableDictionary dictionary];
    CNLabeledValue *labValue = [contact.phoneNumbers lastObject];
    [passDict setObject:contact.familyName forKey:@"familyName"];
    [passDict setObject:contact.givenName forKey:@"givenName"];
    [passDict setObject:[labValue.value stringValue] forKey:@"labValue"];
    self.block(passDict.mutableCopy);
}


- (void)contactPickerDidCancel:(CNContactPickerViewController *)picker {
    [picker dismissViewControllerAnimated:YES completion:nil];
}

@end
