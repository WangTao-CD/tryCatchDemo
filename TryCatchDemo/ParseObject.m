//
//  ParseObject.m
//  TryCatchDemo
//
//  Created by Tao, Wang on 2021/4/20.
//

#import "ParseObject.h"

@implementation ParseObject

- (void)syncThrowException:(void(^)(BOOL success))responseBlock {
    [self throwException];
    dispatch_async(dispatch_get_main_queue(), ^{
        responseBlock(YES);
    });
}

- (void)asyncThrowException:(void(^)(BOOL success))responseBlock {
    dispatch_async(dispatch_get_main_queue(), ^{
        [self throwException];
        responseBlock(YES);
    });
}

- (void)throwException {
    @throw [NSException exceptionWithName:@"HpsScanException" reason:[NSString stringWithFormat:@"Unexpected message type received"] userInfo:nil];
}

@end
