![(logo)](http://www.yeshichang.cn/images/works/logo.png)
# TOMMaillist
Address book small frameWork

# Contents
Support iOS10 call system's address book,and support cocoaPods.

#### Examples

// passDict中三个key值对应：
// familyName:`姓`
// givenName:`名`
// labValue:`电话号码`

    - (IBAction)click:(id)sender {
        [[TOMMaillist sharedInstans] maillistUsingViewController:self UsingBlock:^(NSDictionary *passDict) {
            NSString *str = [NSString stringWithFormat:@"%@%@:%@",passDict[@"familyName"],passDict[@"givenName"],passDict[@"labValue"]];
        [self.button setTitle:str forState:UIControlStateNormal];
            NSLog(@"%@",str);
        }];
    }
