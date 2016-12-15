//
//  ViewController.m
//  PYOperationManager
//
//  Created by Snake on 16/12/15.
//  Copyright © 2016年 IAsk. All rights reserved.
//

#import "ViewController.h"
#import "PYOperationheader.h"

@interface ViewController ()

@end

@implementation ViewController
{
    PYOperationManager *_manager;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _manager = [PYOperationManager manager];
}
- (IBAction)click1:(id)sender {
    [_manager addTask:^{
        NSLog(@"执行单一任务");
    } waitUitl:5];
}
- (IBAction)click:(id)sender {
    static NSInteger i = 0;
    NSString *prt = [NSString stringWithFormat:@"%ld", i];
    [_manager addReplacePreviousTask:^{
        NSLog(@"%@", prt);
    } waitUitl:5];
    i++;
}
- (IBAction)click3:(id)sender {
    static NSInteger j = 0;
    NSString *prt = [NSString stringWithFormat:@"%lld", j];
    [_manager addDoOneTask:^{
        NSLog(@"%@", prt);
    } waitUitl:3];
    j++;
}
- (IBAction)cancel:(id)sender {
    [_manager cancel];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
