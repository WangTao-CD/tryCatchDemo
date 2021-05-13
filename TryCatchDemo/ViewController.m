//
//  ViewController.m
//  TryCatchDemo
//
//  Created by Tao, Wang on 2021/4/20.
//

#import "ViewController.h"
#import "ParseObject.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self trycatch];
}

- (void)trycatch {
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        id test = [ParseObject new];
        @try {
            NSLog(@"1==========");
//            [test syncThrowException:^(BOOL success) {
//                NSLog(@"execute success");
//            }];
            [test asyncThrowException:^(BOOL success) {
                NSLog(@"execute success");
            }];
            NSLog(@"2==========");
        } @catch (NSException *exception) {
            NSLog(@"Catch exception = %@",exception);
            NSLog(@"3==========");
        } @finally {
            NSLog(@"finally==========");
        }
    });
}

@end
