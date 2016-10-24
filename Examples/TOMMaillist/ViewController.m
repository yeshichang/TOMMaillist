//
//  ViewController.m
//  TOMMaillist
//
//  Created by mac on 2016/10/24.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"
#import "TOMMaillist.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// passDict中三个key值对应：
// familyName:姓
// givenName:名
// labValue:电话号码
- (IBAction)click:(id)sender {
    [[TOMMaillist sharedInstans] maillistUsingViewController:self UsingBlock:^(NSDictionary *passDict) {
        
        NSString *str = [NSString stringWithFormat:@"%@%@:%@",passDict[@"familyName"],passDict[@"givenName"],passDict[@"labValue"]];
        [self.button setTitle:str forState:UIControlStateNormal];
        NSLog(@"%@",str);
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
